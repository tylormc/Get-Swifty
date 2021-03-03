//
//  main.m
//  MyTime
//
//  Created by w0415091 on 2021-02-05.
//  Copyright © 2021 w0415091. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int minute;
        printf("\n\n\tEnter minutes = ");
        scanf("%d",&minute);
        printf("\n\t Entered minutes = %d minutes \n\t Which is equivalent to = %d hours and %d minutes",minute,minute/60,minute%60);
        }
    return 0;
}
