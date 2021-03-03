//
//  main.m
//  sum_odd_numbers
//
//  Created by w0415091 on 2021-02-05.
//  Copyright © 2021 w0415091. All rights reserved.
//

#import <Foundation/Foundation.h>

int sum_of_odd_digits(int n) {

    int r, sum = 0;

    // reading each digit of n
    while (n > 0) {

        r = n % 10;    // storing rightmost digit of n in r
        n = n / 10;    // removing rightmost digit of n

        // if r is odd, add r to sum
        if (r % 2 == 1)
            sum = sum + r;

    }

    return sum;

}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
   int n;
    printf("Enter a Number: ");
    scanf("%d", &n);

    printf("Sum of Odd Digits: %d", sum_of_odd_digits(n));

    }
    return 0;
}
