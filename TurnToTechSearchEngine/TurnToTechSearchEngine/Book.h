//
//  Book.h
//  TurnToTechSearchEngine
//
//  Created by Magnus Kraepelien on 16/10/15.
//  Copyright © 2015 Magnus Kraepelien. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Book : NSObject
{
    NSString* source;

}
@property (nonatomic,strong)NSMutableArray* linesInBook;

-(NSMutableArray*)openBook;

-(instancetype)initWithTextFile:(NSString*)textFile;

@end
