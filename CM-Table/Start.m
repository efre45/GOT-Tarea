//
//  ViewController.m
//  CM-Table
//
//  Created by Walter Gonzalez Domenzain on 13/06/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//

#import "Start.h"
#import "cellSimpsons.h"
#import "CharacterDetails.h"
#import "Declarations.h"

@interface Start ()

@property NSMutableArray *toDoItems;


@end

@implementation Start
/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
    self.toDoItems =[[NSMutableArray alloc]init];
 //   [self loadInitialData];
    
    
    
}

//----------------------------------------------------------Table array-----
//-(void) loadInitialData{
 //   ToDoItem *item1 = [[ToDoItem alloc]init];
 //   item1.itemName = @"buy milk";
 //   [self.toDoItems addObject:item1];
    
 //   ToDoItem *item2 = [[ToDoItem alloc]init];
 //   item2.itemName = @"buy eggs";
 //   [self.toDoItems addObject:item2];
    
 //   ToDoItem *item3 = [[ToDoItem alloc]init];
 //   item3.itemName = @"Read a book";
 //   [self.toDoItems addObject:item2];

//}



//-------------------------------------------------------------------------------
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//-------------------------------------------------------------------------------
-(void)initController {
   //Initialize arrays
    maNames         = [[NSMutableArray alloc] initWithObjects: @"Hodor", @"Walker King", @"Ghost", @"Dragon", nil];
    maAges          = [[NSMutableArray alloc] initWithObjects: @"40", @"150", @"18", @"3", nil];
    maImgs          = [[NSMutableArray alloc] initWithObjects: @"hodor.jpg", @"walker.jpg", @"ghost.jpg", @"dragon1.png", nil];
}
/**********************************************************************************************/
#pragma mark - Table source and delegate methods
/**********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return maNames.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 64;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //Initialize cells
    cellSimpsons *cell = (cellSimpsons *)[tableView dequeueReusableCellWithIdentifier:@"cellSimpsons"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"cellSimpsons" bundle:nil] forCellReuseIdentifier:@"cellSimpsons"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"cellSimpsons"];
    }
    //Fill cell with info from arrays
    cell.lblName.text   = maNames[indexPath.row];
    cell.lblAge.text    = maAges[indexPath.row];
    cell.imgUser.image  = [UIImage imageNamed:maImgs[indexPath.row]];
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    miCharacterIndex = (int)indexPath.row;
    CharacterDetails *viewController = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"CharacterDetails"];
    
    [self presentViewController:viewController animated:YES completion:nil];

}






















@end
