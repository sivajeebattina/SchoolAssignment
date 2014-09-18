//
//  Students.h
//  Assignment
//
//  Created by pcs20 on 9/16/14.
//  Copyright (c) 2014 Paradigmcreatives. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Classes.h"
#import "Sections.h"

@interface Students : NSObject

@property(nonatomic,strong)NSString *studentName;
@property(nonatomic,assign)int noOfRows;
@property(nonatomic,strong)Classes *selectedClass;
@property(nonatomic,strong)Sections *selectedSection;


@property(nonatomic,strong)NSString *sectionName;
@property(nonatomic,strong)NSString *className;


@end
