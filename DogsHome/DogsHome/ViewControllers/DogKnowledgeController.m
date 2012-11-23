//
//  DogKnowledgeController.m
//  DogsHome
//
//  Created by houfeng on 12-10-2.
//  Copyright (c) 2012年 houfeng. All rights reserved.
//
#import "HFUtillity.h"
#import "DogKnowledgeController.h"
#import "DogCategoryViewController.h"
@interface DogKnowledgeController ()
@property(nonatomic,strong)UITableView *menuTable;
@property(nonatomic,strong)NSArray *menus;
@end

@implementation DogKnowledgeController

-(id)init{
    self=[super init];
    if(self){
        
        self.menuTable=[[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width,self.view.frame.size.height)];
        self.menuTable.delegate=self;
        self.menuTable.dataSource=self;
        [self.view addSubview:self.menuTable];
        self.menus = [[NSArray alloc] initWithContentsOfFile:[[HFUtillity getBundleDirecory] stringByAppendingString:@"/DogKnowledageMenu.plist"]];
    }
    return self;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return  [self.menus count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *kCellID = @"cellID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellID"];
    if(cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:kCellID] ;
    }
    cell.textLabel.text=NSLocalizedString([[self.menus objectAtIndex:indexPath.row] objectForKey:@"name"], nil);      return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row ==0)
    {
        DogCategoryViewController *dogcategory = [[DogCategoryViewController alloc] init];
        [self.navigationController pushViewController:dogcategory animated:YES];

    }
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
