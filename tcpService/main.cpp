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
    int listenfd,recfd;
    unsigned short int port = 8000;//端口号为8000,端口号小于1024的时候会返回errno 13,为Permission denied。这个是由于超0~1024的端口为公认端口，需要root权限运行。
    int ret = -1;
    struct sockaddr_in servaddr,accept_addr;  
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
    //NADDR_ANY 转换过来就是0.0.0.0，泛指本机的意思，也就是表示本机的所有IP，因为有些机子不止一块网卡，多网卡的情况下，这个就表示所有网卡ip地址的意思。
    //servaddr.sin_addr.s_addr = htonl(INADDR_ANY);
    servaddr.sin_addr.s_addr = inet_addr("192.168.64.128");
    ret = bind(listenfd,(struct sockaddr*)&servaddr,sizeof(servaddr));
    if(ret != 0)
    {
        cout << "bind is error :  " << errno  << ret <<endl;
        close(listenfd);
        return -1;
    }

    ret = listen(listenfd, 10);
	if(ret != 0)
	{
		close(listenfd);		
		exit(-1);
	}	


	printf("listen service @port=%d...\n",port);

    sleep(10);	// 延时10s
 
	system("netstat -an | grep 80");	// 查看连接状态

    //接受连接请求
    unsigned int len = sizeof(accept_addr);
    recfd = accept(listenfd, (struct sockaddr*)&accept_addr, &len);
    if (recfd == -1) 
    {
        cout << "连接失败！errno:" << errno<< endl;
        return 0;
    }
    cout << "连接建立，准备接受数据" << endl;
    while (1)
    {
        recv_len = recv(recfd, recv_buf, 100, 0);
        if (recv_len < 0)
        {
            cout << "接受失败！errno " <<  errno << endl;
            break;
        }
        else 
        {
            cout << "客户端信息:" << recv_buf << endl;
        }
        cout << "请输入回复信息:";
        cin >> send_buf;
        send_len = send(recfd, send_buf, 100, 0);
        if (send_len < 0) 
        {
            cout << "发送失败！" << endl;
            break;
        }
    }
	
	return 0;

}