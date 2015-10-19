//
//  searchEngine.m
//  TurnToTechSearchEngine
//
//  Created by Magnus Kraepelien on 16/10/15.
//  Copyright © 2015 Magnus Kraepelien. All rights reserved.
//

#import "searchEngine.h"

@implementation searchEngine



-(NSUInteger)searchForLine : (NSString*)searchString
{
    NSMutableArray *getlines = [[NSMutableArray alloc]init];
    
    getlines = [self.searchInBook openBook];
    self->rounds = 0;
    unsigned long mid;
    unsigned long min = 0;
    NSUInteger max = [getlines count] - 1;
    
    
   
    while (min<=max) {
        mid = ((min+max)/2);
    
        if([searchString isEqualToString:[getlines objectAtIndex:mid]])
        {
            return mid;
        }
        else if ([searchString caseInsensitiveCompare:[getlines objectAtIndex:mid]] == NSOrderedAscending)
        {
            max = mid - 1;
        }
        else {
            min = mid + 1;
        }
        self->rounds++;
        
    }
    return 0;
}
-(NSUInteger)getNumberOfRounds
{

    return self->rounds;
}


-(instancetype)initWithBook:(Book*)Book
{
    
    self = [super init];
    if (self) {
        self.searchInBook = Book;
        self->rounds = 0;
        
    }
    return self;
}

@end
