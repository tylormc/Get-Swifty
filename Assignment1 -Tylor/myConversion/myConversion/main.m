//
//  main.m
//  Circle
//
//  Created by w0415091/Tylor McNeil on 2021-02-05.
//  Copyright © 2021 Tylor McNeil. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /* Function declaration */
        //Weight
        double computePound(double num);
        double computeKG(double num);
        //Length
        double computeKM(double num);
        double computeMiles(double num);
        
        double computeCM(double num);
        double computeInch(double num);
        
        //Currency
        double computeUS(double num);
        double computeCAN(double num);
        


        float num = 0.0, pound, kg, km, miles, inch, cm, US_Dollars, CAN_Dollars;
        int choice;
        
           pound  = computePound(num);       // Call getPound function
           kg = computeKG(num);           // Call getKG function
               
           miles  = computeMiles(num);       // Call getMiles function
           km = computeKM(num);           // Call getKM function
               
           cm  = computeCM(num);       // Call getCM function
           inch = computeInch(num);           // Call getInch function
               
           US_Dollars  = computeUS(num);       // Call getUS function
           CAN_Dollars = computeCAN(num);           // Call getCAN function
        
              
        
                       /*Title*/

        printf("       Conversion Program\n");

        printf("----------------------------------------\n\n");


                          /*Menu*/

             printf("1)   Pounds to Kilograms            \n");
             printf("2)   Kilograms to Pounds            \n");
             printf("3)   Miles to Kilometers            \n");
             printf("4)   Kilometers to Miles            \n");
             printf("5)   Centimeters to Inches          \n");
             printf("6)   Inches to Centimeters          \n");
             printf("7)   US Dollar to CAD               \n");
             printf("8)   Canadian Dollar to USD         \n");
                
                printf("\n");
                printf("\n");


                  /*Input from User*/

        printf("Please enter your choice (1 - 8): ");
        scanf("%d",&choice);

    
        if(choice==1){
        printf("Enter Amount: ");
        scanf("%f", &num);
        printf("Pounds: = %.2f \n", pound);
        fflush(stdin);
        }
        
        else if(choice==2){
        printf("Enter Amount: ");
        scanf("%f", &num);
        printf("Kilograms: = %.2f \n", km);}

        else if(choice==3){
        printf("Enter Amount: ");
        scanf("%f", &num);
        printf("Miles: = %.2f \n", miles);}
        
        else if(choice==4){
        printf("Enter Amount: ");
        scanf("%f", &num);
        printf("Kilometers: = %.2f ", km);}
            
        else if(choice==5){
        printf("Enter Amount: ");
        scanf("%f", &num);
        printf("Centimeters: = %.2f \n", cm);}
        
        else if(choice==6){
        printf("Enter Amount: ");
        scanf("%f", &num);
        printf("Inches: = %.2f ", inch);}
        
        else if(choice==7){
        printf("Enter Amount: ");
        scanf("%f", &num);
        printf("USD: = $%.2f \n", US_Dollars);}
        
        else if(choice==8){
        printf("Enter Amount: ");
        scanf("%f", &num);
        printf("CAD: = $%.2f \n", CAN_Dollars);}

    }
      return 0;
    }

double computePound(double num)
{
    return (2.2046 * num);
}

double computeKG(double num)
{
    return (num / 2.2046);
}

double computeMiles(double num)
{
    return (num / 0.62137 );
}

double computeKM(double num)
{
    return (num * 0.62137);
}

double computeInch(double num)
{
    return (num / 0.39370 );
}

double computeCM(double num)
{
    return (num * 0.39370);
}

double computeUS(double num)
{
    return (num * 1.28 );
}

double computeCAN(double num)
{
    return (num * 0.78);
}



