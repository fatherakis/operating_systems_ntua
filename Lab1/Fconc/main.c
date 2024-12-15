#include "fconc.h"
#include <unistd.h>
#include <fcntl.h>
#include <stdio.h>

int main(int args, char * argv[]){
  if (args>4 || args<3){
    printf("Usage: ./fconc infile1 infile2 [outfile (default:fconc.out)] \n");
    return 0;
  }
  int fd;
  if(args==3){
    fd = open("fconc.out", O_RDWR | O_CREAT, S_IRWXU);
    if (fd == -1){
      perror("WRITE FAIL");
      return 1;
    }
    else{
      write_file(fd, argv[1], argv[2]);
    }
    close(fd);
  }
  else{
    fd = open(argv[3], O_RDWR | O_CREAT, S_IRWXU);
    if (fd == -1){
      perror("WRITE FAIL");
      return 1;
    }
    else{
      write_file(fd, argv[1], argv[2]);
    }
    close(fd);
  }
  return 0;
}
