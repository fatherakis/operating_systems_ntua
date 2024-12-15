#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <signal.h>
#include <sys/types.h>
#include <sys/wait.h>

#include "tree.h"
#include "proc-common.h"

void fork_procs(struct tree_node *my_node, int fd1[2]){
        int fd_1[2], fd_2[2];
        int chd = my_node ->  nr_children;
        pid_t pid_1, pid_2;
        change_pname(my_node->name);
        int status;
        struct tree_node *temp;
        int numb_1,numb_2,end;
        if (chd){
                if(pipe(fd_1)==-1 || pipe(fd_2)==-1){
                        perror("errors");
                        exit(2);
                }
                temp = my_node->children;
                my_node->children++;
                pid_1 = fork();
                if(pid_1<0){
                        perror("this is my life now");
                        exit(17);
                }
                if(pid_1==0){
                        fork_procs(temp,fd_1);
                        exit(42);
                }
                temp = my_node->children;
                my_node->children++;
                pid_2 = fork();
                if(pid_2<0){
                        perror("this is my life now");
                        exit(17);
                }
                if(pid_2==0){
                        fork_procs(temp,fd_2);
                        exit(42);
                }
                pid_1 = wait(&status);
                explain_wait_status(pid_1,status);
                close(fd_1[1]); // Close write
                read(fd_1[0], &numb_1, sizeof(fd_1[0]));
                printf("Received: %d \n",numb_1);
                // Second number //
                pid_2 = wait(&status);
                explain_wait_status(pid_2,status);
                close(fd_2[1]); // Close write
                read(fd_2[0], &numb_2, sizeof(int));
                printf("Received: %d \n",numb_2);
                if(my_node->name[0]=='+')  end = numb_1+numb_2;
                else                    end = numb_1*numb_2;
                close(fd1[0]); // Close read
                write(fd1[1], &end, sizeof(end)); // writing to father
                printf("Calculation: %d %s %d = %d \n",numb_1, my_node->name, numb_2,end);
                close(fd1[1]);
        }
        else{
                close(fd1[0]); // Close read
                numb_1 = atoi(my_node->name); // Convert string to int
                write(fd1[1], &numb_1, sizeof(numb_1));
                close(fd1[1]);
                printf("Just sent child with number %d \n",numb_1);
                exit(numb_1);
        }
        exit(1);
}
int main(int argc, char *argv[]){
        pid_t pid;
        int status;
        struct tree_node *root;
        if (argc < 2){
                fprintf(stderr, "Usage: %s <tree_file>\n", argv[0]);
                exit(1);
        }
        root = get_tree_from_file(argv[1]);
        int fd[2];
        if (pipe(fd)==-1){
                perror("Pipe error");
                exit(1);
        }
        pid = fork();
        if (pid < 0) {
                perror("main: fork");
                exit(1);
        }
        if (pid == 0) {
                /* Child */
                fork_procs(root, fd);
                exit(1);
        }
        wait(&status);
        explain_wait_status(pid, status);
        close(fd[1]);
        int result;
        read(fd[0], &result, sizeof(int));
        close(fd[0]);
        printf("Final result: %d \n",result);
        return 0;
}
