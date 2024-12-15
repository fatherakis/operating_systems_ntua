#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <sys/types.h>
#include <sys/wait.h>
#include "tree.h"
#include "proc-common.h"

#define SLEEP_PROC_SEC  10
#define SLEEP_TREE_SEC  3

/*
 * Create this process tree:
 * A-+-B---D
 *   `-C
 */

/*void fork_procs(void)
{

         // initial process is A.


        change_pname("A");
        printf("A: Sleeping...\n");
        sleep(SLEEP_PROC_SEC);

        pid_t pid;
        pid = fork();
        if (pid < 0) {
                perror("main: fork");
                exit(1);
        }
        if (pid == 0) {
                // Child
                fork_procs();
                exit(1);
        }


        printf("A: Exiting...\n");
        exit(16);
}*/
void Cproc (void){
   change_pname("C");
   printf("C: Sleeping...\n");
   sleep(SLEEP_PROC_SEC);
   printf("C: Exiting.\n");
   exit(17);
}
void Dproc (void){
   change_pname("D");
   sleep(1);
   printf("D: Sleeping...\n");
   sleep(SLEEP_PROC_SEC);
   printf("D: Exiting.\n");
   exit(13);
 }
void proc_B(void){
  pid_t pidD;
  int status;
  change_pname("B");

  pidD = fork();
  if (pidD < 0) {
          perror("B: fork");
          exit(1);
  }
  if (pidD == 0) {
          Dproc();
          exit(1);
  }
  printf("B: Waiting...\n");
  pidD = wait(&status);
  explain_wait_status(pidD, status);
  printf("B: Exiting.\n");
  exit(19);
}
void fork_procs(void){
        pid_t pidB, pidC;
        int status;
        /*
         * initial process is A.
         */
        change_pname("A");
        pidB = fork();
        if (pidB < 0) {
                perror("A: fork");
                exit(1);
        }
        if (pidB == 0) {
                proc_B();
                /* Child */
                exit(1);
        }
        pidC = fork();
        if (pidC < 0) {
                perror("A: fork");
                exit(1);
        }
        if (pidC == 0) {
                Cproc();
                /* Child */
                exit(1);
        }
        /* Fork root of process tree */
        printf("A: Waiting...\n");
        pidB = wait(&status);
        explain_wait_status(pidB, status);
        pidC = wait(&status);
        explain_wait_status(pidC, status);
        printf("A: Exiting...\n");
        exit(16);
}

/*
 * The initial process forks the root of the process tree,
 * waits for the process tree to be completely created,
 * then takes a photo of it using show_pstree().
 *
 * How to wait for the process tree to be ready?
 * In ask2-{fork, tree}:
 *      wait for a few seconds, hope for the best.
 * In ask2-signals:
 *      use wait_for_ready_children() to wait until
 *      the first process raises SIGSTOP.
 */

void anadromic(struct tree_node *my_node, int out){
        int chd = my_node ->  nr_children;
        pid_t pid_list[chd];
        change_pname(my_node->name);
        int status;
        struct tree_node *temp;
        printf("Exit process of %s is %d \n",my_node->name, out);
        int i = 0;
        if (chd){
                for (i = 0; i < chd; i++){
                        temp = my_node->children;
                        my_node->children++;
                        pid_list[i] = fork();
                        if(pid_list[i]<0){
                                perror("this is my life now");
                                exit(17);
                        }
                        if(pid_list[i]==0){
                                anadromic(temp,out+1);
                                exit(42);
                        }
                }
                for (i = 0 ; i < chd; i++){
                        pid_list[i] = wait(&status);
                        explain_wait_status(pid_list[i], status);
                }
        }
        else{
                printf("Process %s is sleeping \n", my_node->name);
                sleep(10);
        }
        printf("Process %s exiting \n", my_node->name);
        exit(out);
}





int main(int argc, char *argv[]){
        struct tree_node *root;

        if (argc != 2) {
          pid_t pid;
          int status;
           // Fork root of process tree //
          pid = fork();
           if (pid < 0) {
                   perror("main: fork");
                  exit(1);
           }
          if (pid == 0) {
            /* Child */
                  fork_procs();
                  exit(1);
           }
          sleep(SLEEP_TREE_SEC);
          show_pstree(getpid());
          pid = wait(&status);
          explain_wait_status(pid, status);
          return 0;
        }

        root = get_tree_from_file(argv[1]);
        pid_t pid;
        int status;
        pid = fork();
        if (pid < 0){
          perror("this doesn't work");
          exit(1);
        }
        if (pid == 0){
          anadromic(root,1);
          exit(1);
        }
        sleep(3);
        printf("Show_pstree output: \n");
        show_pstree(pid);
        printf("\nPrint_tree output: \n");
        print_tree(root);
        pid = wait(&status);
        explain_wait_status(pid, status);
        return 0;
}
