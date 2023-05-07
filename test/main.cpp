#include<thread>
#include<iostream>
#include<string>
#include<string.h>
#include <pthread.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <sys/types.h>
#include <unistd.h>
#include <arpa/inet.h>
using namespace std;

int main()
{
    char arm[]="word";
    cout<<"sizeof:%d"<<sizeof(arm)<<endl;
    cout<<"strlen:%d"<<strlen(arm)<<endl;

    int tacos[10] = {0,1,2,3,4,5,6,7,8,9};
    int *p = tacos;
    int *p1 = tacos+9;
    cout<<"p1 -p = "<<p1-p<<endl;
    cout<<"p1 = "<<p1<<"   "<<"p = "<<p<<endl;

    char arm1[10] = "1234";
    for(int i = 0;i<10;i++)
    {
        cout<<(int)arm1[i]<<endl;
    }
    cout<<endl;
    char arm2[10] = "123456789";
    for(int i = 0;i<10;i++)
    {
        cout<<(int)arm2[i]<<endl;
    }
    cout<<endl;
    strcpy(arm2,arm1);
    for(int i = 0;i<10;i++)
    {
        cout<<(int)arm2[i]<<endl;
    }
    cout<<endl;
    strcpy(arm2,arm1);
    for(int i = 0;i<10;i++)
    {
        cout<<(int)arm2[i]<<endl;
    }
	
	return 0;

}