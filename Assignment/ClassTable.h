//
//  ClassTable.h
//  Assignment
//
//  Created by pcs20 on 9/16/14.
//  Copyright (c) 2014 Paradigmcreatives. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SchoolTable.h"
#import "Classes.h"
#import "ClassTable.h"

@interface ClassTable : UITableViewController{
    Classes *classDataFinal;
}

@property(nonatomic,strong)Classes *classData;

@end
