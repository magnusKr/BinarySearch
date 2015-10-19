//
//  Book.m
//  TurnToTechSearchEngine
//
//  Created by Magnus Kraepelien on 16/10/15.
//  Copyright © 2015 Magnus Kraepelien. All rights reserved.
//

#import "Book.h"


@implementation Book


-(instancetype)initWithTextFile:(NSString*)textFile
{
    
    self = [super init];
    if (self) {
        self->source = textFile;
        
        
    }
    return self;
}

-(NSMutableArray*)openBook
{
    NSString *fh = [NSString stringWithContentsOfFile:self->source encoding:NSUTF8StringEncoding error:NULL];
    
    _linesInBook = [[NSMutableArray alloc]init];

    for (NSString *line in [fh componentsSeparatedByString:@"\n"]) {
        if([line length]!=0){
            [_linesInBook addObject:line];
        }
    }
    return _linesInBook;
    
}
@end
