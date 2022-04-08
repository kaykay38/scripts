/**                                                             
* @author Mia Hunt
* @github kaykay38
*/
#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>


int main(void){
    time_t rawTime = time(NULL);
    if (rawTime == -1)
    {
        puts("The time() function failed");
        return 1;
    }
    
    struct tm *ptime = localtime(&rawTime);
    if(ptime == NULL)
    {
        puts("The localtime() function failed");
        return 1;
    }

    char *months[12] = {"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul","Aug", "Sep", "Oct", "Nov","Dec"};
    char *weekdays[7] = {"Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"};

    int monthNum = ptime->tm_mon;
    int dayNum = ptime->tm_mday;
    int yearNum = ptime->tm_year+1900;
    int weekdayNum = ptime->tm_wday;
    char *month = months[monthNum];
    char *weekday = weekdays[weekdayNum];
    char *day="", *monthNumChar="", year[4];
    char todoFileName[25] = "TODO_";
    
    sprintf(year, "%d", yearNum);
    strcat(todoFileName, year);
    // sprintf(monthNumChar, "%d", monthNum);
    printf("Today's date and time is: %s, %s %d %02d %d:%02d\n", weekday, month, dayNum, yearNum,ptime->tm_hour, ptime->tm_min);
    printf("%s", todoFileName);
    /*
    snprintf(todoFileName,sizeof(todoFileName)*9,"%s%s%s%s%s%s%s%s%s","TODO_",year,"_",monthNumChar,"_",day,"_",weekday,".md");
    for (int i =0; i < 8; i++)
    {
    }
    char todoFilePath[100];
    strcpy(todoFilePath, "/home/mia/OneDrive/TODO/");
    printf("%s",todoFilePath);
    FILE *todoFile;
    todoFile = fopen(todoFilePath,"a");
    if(todoFile == NULL)
    {
        printf("Error!");
        return 1;
    }
    fprintf(todoFile, "Test");
    fclose(todoFile);
    */
    return 0;
}
