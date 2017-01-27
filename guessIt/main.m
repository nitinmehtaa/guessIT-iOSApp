//
//  main.m
//  guessIt
//
//  Created by apple on 27/01/17.
//  Copyright © 2017 nitin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int answer =0;
        int guess = 0;
        int turn = 0;
        answer = arc4random()%100+1;
        while (guess!=answer) {
            turn++;
            NSLog(@"Guess #%i: Enter a number between 1 to 100", turn);
            scanf("%i", &guess);
            if(guess>answer){
                NSLog(@"Lower");
            }
            else if(guess<answer){
                NSLog(@"Higher");
                }
            
            else{
                NSLog(@"correct! The answer is %i", answer);
                
            }
        } //end of while loop
        
        NSLog(@"It took you %i tries to match with auto generated number", turn);
    }
    
    return 0;
}
