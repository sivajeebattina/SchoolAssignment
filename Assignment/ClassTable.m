//
//  ClassTable.m
//  Assignment
//
//  Created by pcs20 on 9/16/14.
//  Copyright (c) 2014 Paradigmcreatives. All rights reserved.
//

#import "ClassTable.h"
#import "Sections.h"
#import "SectionTable.h"

@interface ClassTable ()

@end

@implementation ClassTable
{
    
    NSMutableArray *sectionObjectArray;
}


- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title=_classData.className;
    
    sectionObjectArray=[[NSMutableArray alloc] init];
    
    for (int i=0; i<5; i++) {
        Sections *sectionObject=[[Sections alloc] init];
        sectionObject.sectionName=[NSString stringWithFormat:@"Section %d",i+1];
        sectionObject.noOfRows=5;
        sectionObject.selectedClass=_classData;
        [sectionObjectArray addObject:sectionObject];
    }
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _classData.noOfRows;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"gotoSections"];
    
    // Configure the cell...
    
   Sections *tempObject=[sectionObjectArray objectAtIndex:indexPath.row];
    cell.textLabel.text=tempObject.sectionName;
    return cell;
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    if ([[segue identifier] isEqualToString:@"gotoSections"]) {
        SectionTable *sectbl=[segue destinationViewController];
        
       NSIndexPath *selectedIndexpath=[self.tableView indexPathForSelectedRow];
        sectbl.sectionData=[sectionObjectArray objectAtIndex:selectedIndexpath.row];
        
    }
}


@end
