#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>

int
main(void)
{
    pid_t pink;
    pink = getpid();

    pid_t blue;
    blue = getpgrp();

    pid_t green;
    green = getsid(0);

    printf("ProcessID is %d, Process Group ID is %d, session_id is %d \n", 
            pink, blue, green);
    sleep(5);
    exit(0);
}
