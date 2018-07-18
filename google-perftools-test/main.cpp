#define GLOBALORIGIN
#include"hello.h"
#undef GLOBALORIGIN

#include<iostream>

#include <gperftools/profiler.h>

using namespace std;
int main(void)
{	
	ProfilerStart("./liz.prof");
	number=200;
	cout<<"Hello Word !! and the number is:"<<number<<endl;
	hello();
	ProfilerStop();
}
