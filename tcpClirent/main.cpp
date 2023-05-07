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
    int listenfd,retfd;
    unsigned short int port = 8000;//端口号为8000,端口号小于1024的时候会返回errno 13,为Permission denied。这个是由于超0~1024的端口为公认端口，需要root权限运行。
    int ret = -1;
    struct sockaddr_in servaddr;  
    char send_buf[2048] = {0};
    char recv_buf[2048] = {0};
    int send_len = 0;
    int recv_len = 0;

    listenfd = socket(AF_INET,SOCK_STREAM,0);
    if(listenfd < 0)
    {
        cout << "listenfd < 0" << endl;
        exit(-1);
    }
    bzero(&servaddr,sizeof(servaddr));
    servaddr.sin_family = AF_INET;
    servaddr.sin_port = htons(port);
    //INADDR_ANY 转换过来就是0.0.0.0，泛指本机的意思，也就是表示本机的所有IP，因为有些机子不止一块网卡，多网卡的情况下，这个就表示所有网卡ip地址的意思。
    servaddr.sin_addr.s_addr = inet_addr("192.168.64.22");
    //servaddr.sin_addr.s_addr = htonl(INADDR_ANY);
    ret = connect(listenfd,(struct sockaddr*)&servaddr,sizeof(servaddr));
    if(ret != 0)
    {
        cout << "connect is error :  " << errno  << ret <<endl;
        close(listenfd);
        return -1;
    }


	printf("listen client @port=%d...\n",port);
 
	system("netstat -an | grep 80");	// 查看连接状态
    while(1)
    {
        cout << "请输入发送信息:";
		cin >> send_buf;
		send_len = send(listenfd, send_buf, 100, 0);
		if (send_len < 0) 
        {
			cout << "发送失败！" << endl;
			break;
		}
		retfd = recv(listenfd, recv_buf, 100, 0);
		if (retfd < 0) 
        {
			cout << "接受失败！" << endl;
			break;
		}
		else 
        {
			cout << "服务端信息:" << recv_buf << endl;
        }
    }	
	
	return 0;

}