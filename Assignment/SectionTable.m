//
//  SectionTable.m
//  Assignment
//
//  Created by pcs20 on 9/16/14.
//  Copyright (c) 2014 Paradigmcreatives. All rights reserved.
//

#import "SectionTable.h"
#import "Students.h"
#import "StudentTable.h"
#import "Classes.h"

@interface SectionTable ()

{
    
    NSMutableArray *studentsObjectArray;
}

@end

@implementation SectionTable

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
    
    self.title=_sectionData.sectionName;
    
    studentsObjectArray=[[NSMutableArray alloc] init];
    
    NSMutableArray *stData = [[NSMutableArray alloc] initWithObjects:@"sivajee",@"ram",@"rajani",@"ranga",@"Mahindra", nil];
    
    for (int i=0; i<5; i++) {
        Students *studentObject=[[Students alloc] init];
        studentObject.studentName=[stData objectAtIndex:i];
        studentObject.noOfRows=5;
        studentObject.selectedSection=_sectionData;
        studentObject.selectedClass=_sectionData.selectedClass;
        [studentsObjectArray addObject:studentObject];
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

#pragma mark UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _sectionData.noOfRows;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"gotoStudent"];
    
    // Configure the cell...
    
   Students *tempObject=[studentsObjectArray objectAtIndex:indexPath.row];
    
   cell.textLabel.text=tempObject.studentName;

    return cell;
}

 
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([[segue identifier] isEqualToString:@"gotoStudent"]) {
        StudentTable *stdtbl=[segue destinationViewController];
        
        NSIndexPath *selectedIndexpath=[self.tableView indexPathForSelectedRow];
        stdtbl.studentData=[studentsObjectArray objectAtIndex:selectedIndexpath.row];
        
    }
    
}


@end
