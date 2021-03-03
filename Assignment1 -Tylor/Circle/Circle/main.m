//
//  main.m
//  Circle
//
//  Created by w0415091 on 2021-02-05.
//  Copyright © 2021 w0415091. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /* Function declaration */
        double computeDiameter(double radius);
        double computeArea(double radius);


        float radius, dia, area;
    
    /* Input radius of circle from user */
    printf("Enter radius of circle: ");
    scanf("%f", &radius);
    
    dia  = computeDiameter(radius);       // Call getDiameter function
    area = computeArea(radius);           // Call getArea function
    
    printf("Diameter of the circle = %.2f units\n", dia);
    printf("Area of the circle = %.2f sq. units", area);
    

    }
    return 0;
}

/**
 * Calculate diameter of circle whose radius is given
 */
double computeDiameter(double radius)
{
    return (2 * radius);
}


/**
 * Find area of circle whose radius is given
 */
double computeArea(double radius)
{
    return (M_PI * radius * radius); // M_PI = PI = 3.14 ...
}
