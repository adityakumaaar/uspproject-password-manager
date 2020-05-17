#include <stdio.h>
#include <fcntl.h>
#include <stdio.h>
#include <unistd.h>
#include <sys/stat.h>
#include <stdlib.h>
#include <time.h>
#include <pwd.h>
#include <grp.h>
#include <sys/types.h>
#include <bits/stdc++.h>
#define linebreak cout<<"\n**********************************\n\n";
using namespace std;


int main(int argc, char** argv){

    // "./a.out" = cout<<argv[0];

    if(strcmp(argv[1],"store")==0){
        //user wants to store a password
        //means he already has : email-id/username and password

        linebreak
        std::cout<<"This is the command to store the password"<<endl;
        linebreak

        system("/home/aditya/Desktop/password-manager/store.sh");

    }
    
    if(strcmp(argv[1],"recollect")==0){

        linebreak
        std::cout<<"This is the command to read the password"<<endl;
        linebreak

        system("/home/aditya/Desktop/password-manager/recollect.sh");

    }
    
}