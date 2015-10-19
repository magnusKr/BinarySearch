//
//  searchEngine.h
//  TurnToTechSearchEngine
//
//  Created by Magnus Kraepelien on 16/10/15.
//  Copyright © 2015 Magnus Kraepelien. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"

@interface searchEngine : NSObject
{
    NSUInteger rounds;
}

@property (nonatomic,strong)Book* searchInBook;


-(NSUInteger)searchForLine : (NSString*)searchString;

-(NSUInteger)getNumberOfRounds;

-(instancetype)initWithBook:(Book*)Book;


@end
