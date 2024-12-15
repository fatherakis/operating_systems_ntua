/*
 * mandel.c
 *
 * A program to draw the Mandelbrot Set on a 256-color xterm.
 *
 */

#include <semaphore.h>
#include <stdio.h>
#include <unistd.h>
#include <assert.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>
#include <time.h>
#include <pthread.h>
#include <errno.h>
#include <sys/time.h>
#include <signal.h>

#include "mandel-lib.h"

#define perror_pthread(ret, msg) \
                do { errno = ret; perror(msg); } while (0)
#define MANDEL_MAX_ITERATION 100000

/***************************
 * Compile-time parameters *
 ***************************/

/*
 * Output at the terminal is is x_chars wide by y_chars long
*/
int y_chars = 50;
int x_chars = 90;

void cntrl_c_color(){
  reset_xterm_color(1);
  exit(-1);
}

/*
 * The part of the complex plane to be drawn:
 * upper left corner is (xmin, ymax), lower right corner is (xmax, ymin)
*/
double xmin = -1.8, xmax = 1.0;
double ymin = -1.0, ymax = 1.0;

typedef struct {
  pthread_t tid;
  int l;
  sem_t mutex;
}semstruct;

semstruct *s_list;

int n;
/*
 * Every character in the final output is
 * xstep x ystep units wide on the complex plane.
 */
double xstep;
double ystep;

/*
 * This function computes a line of output
 * as an array of x_char color values.
 */
void compute_mandel_line(int line, int color_val[])
{
        /*
         * x and y traverse the complex plane.
         */
        double x, y;

        int n;
        int val;

        /* Find out the y value corresponding to this line */
        y = ymax - ystep * line;

        /* and iterate for all points on this line */
        for (x = xmin, n = 0; n < x_chars; x+= xstep, n++) {

                /* Compute the point's color value */
                val = mandel_iterations_at_point(x, y, MANDEL_MAX_ITERATION);
                if (val > 255)
                        val = 255;

                /* And store it in the color_val[] array */
                val = xterm_color(val);
                color_val[n] = val;
        }
}

/*
 * This function outputs an array of x_char color values
 * to a 256-color xterm.
 */
void output_mandel_line(int fd, int color_val[])
{
        int i;

        char point ='@';
        char newline='\n';

        for (i = 0; i < x_chars; i++) {
                /* Set the current color, then output the point */
                set_xterm_color(fd, color_val[i]);
                if (write(fd, &point, 1) != 1) {
                        perror("compute_and_output_mandel_line: write point");
                        exit(1);
                }
        }

        /* Now that the line is done, output a newline character */
        if (write(fd, &newline, 1) != 1) {
                perror("compute_and_output_mandel_line: write newline");
                exit(1);
        }
}

void *compute_and_output_mandel_line(void *arg)
{

        int i;

        int t = *(int*)arg;

        /*
         * A temporary array, used to hold color values for the line being drawn
         */
        for(i = t; i < y_chars; i+=n){
           // for each thread
          int color_val[x_chars];
          //sem_wait(&s_list[i%n].mutex); //without acceleration
          compute_mandel_line(i, color_val);
          //wait for semaphores
          sem_wait(&s_list[i%n].mutex);  //acceleration
          output_mandel_line(1, color_val);
          // initialise next semaphore
          sem_post(&s_list[(i+1)%n].mutex);
        }
        return 0;
}

int main(int argc, char *argv[])
{
        int line;
        signal(SIGINT, cntrl_c_color);
        struct timeval start,end;
        gettimeofday(&start,NULL);
        xstep = (xmax - xmin) / x_chars;
        ystep = (ymax - ymin) / y_chars;

        /*
         * draw the Mandelbrot Set, one line at a time.
         * Output is sent to file descriptor '1', i.e., standard output.
         */
        int temp;
        int ret;
        if(argc != 2){
          printf("Input a number of threads to use \n");
          return 1;
        }
        n = atoi(argv[1]);
        s_list = (semstruct*)malloc(n*sizeof(semstruct)); //allocate mem for every thread we are going to use
        sem_init(&s_list[0].mutex,0,1); //initialise the first thread since the rest are initialised from _post
        for (line = 1; line < n; line++){
          sem_init(&s_list[line].mutex,0,0); //initialise unnamed semaphores
        }

                for (temp = 0; temp < n; temp ++){
                  s_list[temp].l = temp;
                  ret = pthread_create(&s_list[temp].tid, NULL, compute_and_output_mandel_line, &s_list[temp].l);
                  if (ret) {
                    perror_pthread(ret, "pthread_create");
                    exit(1);
                  }
                } // created n threads to use
        for(temp = 0; temp<n; temp++){
          ret = pthread_join(s_list[temp].tid, NULL);
          if (ret) {
                perror_pthread(ret, "pthread_join");
                exit(1);
          }
        }
        for(temp = 0; temp<n; temp++){
          sem_destroy(&s_list[temp].mutex);
        }
        reset_xterm_color(1);
        gettimeofday(&end,NULL);
        long total = (end.tv_sec - start.tv_sec);
        double micro_tot = (((total*1000000) + end.tv_usec) - (start.tv_usec));
        printf("Execution Time:%lf \n", micro_tot/1000000);
        return 0;
}
