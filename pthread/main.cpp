#include<thread>
#include<iostream>
#include<string>
#include <pthread.h>
using namespace std;

void* test01(void* args);
void* test02(void* args);
void test03();
void test04();
int main()
{
    thread a(test03);
    thread b(test04);
    while(1)
    {
        cout << "主进程" <<endl;
    }
    a.join();
    b.join();
    /* pthread_t a,b;
    printf("0\n");
    int RET = pthread_create(&a,NULL,test01,NULL);
    printf("2\n"); */
    
    
    return 0;
}

void* test01(void* args)
{
    printf("111\n");
    int num = 10;
    while(1)
    {
        printf("1\n");
        std::cout << "线程1 num = " << num <<endl;
        //num--;
    }
    return 0;
}

void* test02(void* args)
{
    int num = 10;
    while(1)
    {
        std::cout << "线程2 num = " << num <<endl;
        //num--;
    }
    return 0;
}

void test03()
{
    //printf("111\n");
    int num = 10;
    while(1)
    {
        printf("1\n");
        std::cout << "线程1 num = " << num <<endl;
        //num--;
    }
}

void test04()
{
    int num = 10;
    while(1)
    {
        std::cout << "线程2 num = " << num <<endl;
        //num--;
    }
}



