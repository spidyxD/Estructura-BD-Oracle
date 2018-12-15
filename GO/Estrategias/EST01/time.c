#include <time.h>
#include <stdio.h>
#include <stdlib.h>

/**
* @author: _Adrian_Prendas_Araya_
* @email: a6r2an@gmail.com
* @date: 02/10/18
**/
// argv interval_segs job1.bat, job2.bat, ..., jobi.bat, jobn.bat
int main(int argc, char **argv){
	if(argc<3){
		printf("err \n");
		printf("usage:\n\ttime.exe Interval_segs, job1.bat, job2.bat, ..., jobi.bat, jobn.bat \n");
	}
	int interval = atoi(argv[1]);
	if(interval == 0){
		printf("interval must be a number greater than 1\n");
		return -1;
	}
	
	
	
    /*for(int i=0; i < argc; i++){
        printf("%d) %s \n", i, argv[i]);
    }*/
    
    clock_t start = clock();
    clock_t now = clock();
    double seg = 0;
    double timeline = 0;
    int count = 0;

    for(;;){
		for(int i=2; i < argc; i++){
			
    
			while(seg < interval){
				now = clock();
				seg = (double)(now - start) / CLOCKS_PER_SEC;
			}
			timeline += seg;
			printf("%d) Elapsed: %f seconds\n", count++, timeline);
			start = clock();
			now = clock();
			seg = (double)(now - start) / CLOCKS_PER_SEC;
			system(argv[i]);
		}
    }
	

    return 0;
}