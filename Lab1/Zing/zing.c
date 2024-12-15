#include<stdio.h>
#include<unistd.h>
#include<string.h>
void zing(){
        char PATH[1024];
        getcwd(PATH, 100);
        //printf("%s",getcwd(PATH, 100));
        char * token = strtok(PATH, "/");
        int i = 0;
        while(token != NULL ) {
             if(i==2)printf( "Team %s are sending their Greetings!\n", token ); //Printing token
             token = strtok(NULL, "/");
             i++;
             
        }
}
