//
//  Sections.h
//  Assignment
//
//  Created by pcs20 on 9/16/14.
//  Copyright (c) 2014 Paradigmcreatives. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Classes.h"

@interface Sections : NSObject


@property(nonatomic,strong)NSString *sectionName;
@property(nonatomic,assign)int noOfRows;
@property(nonatomic,strong)Classes *selectedClass;

@property(nonatomic,strong)NSString *className;

@end
