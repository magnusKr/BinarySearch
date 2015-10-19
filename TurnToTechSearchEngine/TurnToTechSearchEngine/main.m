//
//  main.m
//  TurnToTechSearchEngine
//
//  Created by Magnus Kraepelien on 16/10/15.
//  Copyright © 2015 Magnus Kraepelien. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"
#import "searchEngine.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
 
        
        Book *book1 = [[Book alloc]initWithTextFile:@"/Users/magnus.kraepelien/Documents/Repository/TestTurnToTech/test4BinarySearch/assorted-breakfast.txt"];
        
        searchEngine *mySearchEngine = [[searchEngine alloc]initWithBook:book1];
       
        NSInteger index = [mySearchEngine searchForLine:@"Whoa! Mr. Trout!\""];
        
        if (index){
            NSLog(@"Index: %lu \n",index);
        
            NSLog(@"Number of runs: %lu",(unsigned long)[mySearchEngine getNumberOfRounds]);
        }
        
        else{
            NSLog(@"Can't find string");
        }

    }
    return 0;
}
