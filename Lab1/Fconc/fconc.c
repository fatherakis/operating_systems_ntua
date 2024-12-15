#include <unistd.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>

void doWrite(int fd, const char *buff1, int len1){// len is lXX of read  buff is buffer of read  fd is filedescriptor of writing file
  int len;
  len = write(fd, buff1, len1);
  if (len != len1){
    perror("WRITE FAIL");
  }
}

void write_file(int fd, const char *infile1, const char *infile2){// infile is *argv[]   fd is filedescriptor OF THE WRITING FILE
  int fd1,fd2;
  int len = 1023;
  char buffer[1024];
  fd1 = open(infile1, O_RDONLY);
  if (fd1 == -1){
    perror("READ FAIL");
    exit(1);
  }
  else{
    while (len == 1023){
      len = read(fd1, buffer, sizeof(buffer)-1);
      doWrite(fd,buffer,len);
    }
  }

  close(fd1);
  fd2 = open(infile2, O_RDONLY);
  len = 1023;
  if (fd2 == -1){
    perror("READ FAIL");
    exit(1);
  }
  else{
    while (len == 1023){
      len = read(fd2, buffer, sizeof(buffer)-1);
      doWrite(fd,buffer,len);
    }
  }
  close(fd2);
}
