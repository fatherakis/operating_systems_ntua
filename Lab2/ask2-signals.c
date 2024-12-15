#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <signal.h>
#include <sys/types.h>
#include <sys/wait.h>

#include "tree.h"
#include "proc-common.h"

void fork_procs(struct tree_node *my_node, int out){
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
                                fork_procs(temp,out+1);
                                exit(42);
                        }
                }
                wait_for_ready_children(chd);
                raise(SIGSTOP);
                printf("PID = %ld, name = %s is awake\n",
                        (long)getpid(), my_node->name);
                for(i = 0; i < chd; i++){
                        kill(pid_list[i],SIGCONT);
                        pid_list[i]=wait(&status);
                        explain_wait_status(pid_list[i],status);

                }

        }
        else{
                printf("Process %s is sleeping \n", my_node->name);
                raise(SIGSTOP);
                printf("PID = %ld, name = %s is awake\n",
                        (long)getpid(), my_node->name);

        }
        exit(out);
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
        pid = fork();
        if (pid < 0) {
                perror("main: fork");
                exit(1);
        }
        if (pid == 0) {
                /* Child */
                fork_procs(root, 1);
                exit(1);
        }
        wait_for_ready_children(1);
        show_pstree(pid);
        kill(pid, SIGCONT);
        wait(&status);
        explain_wait_status(pid, status);
        return 0;
}
