//
//  ViewController.m
//  PishumTableView
//
//  Created by Pishum on 15/7/29.
//  Copyright (c) 2015年 Pishum. All rights reserved.
//

#import "ViewController.h"
#import "SimpleTableViewCell.h"
#import "Person.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    NSMutableArray *tableData;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIBarButtonItem *backbutton = [[UIBarButtonItem alloc]init];
    backbutton.title = @"返回列表";
    self.navigationItem.backBarButtonItem = backbutton;
    
    tableData = [[NSMutableArray alloc]init];
    tableData = [self getTableData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/******************UITableView********************************/
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

#pragma mark 一组里面有多少行
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSLog(@"一共是%ld行",tableData.count);
    return tableData.count;
}

#pragma mark indexPath里面对应的数据
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"tableview加载数据中。。。。。。");
    
    Person *person = tableData[indexPath.row];
    static NSString *simpleTableIdentifier = @"SimpleTableViewCell";
    SimpleTableViewCell *cell = (SimpleTableViewCell *)[_tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];

    cell.name.text = person.personName;
    cell.describe.text = person.personDescribe;
    cell.icon.image = [UIImage imageNamed:person.personIcon];

    return cell;
}

#pragma mark 返回indexPath这行的cell高度
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 72;
}


#pragma mark 点击事件
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"点击了这里");
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

#pragma mark 左滑动可以选择删除
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [tableData removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
        
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}


/******************UITableView*******END**********************/

-(NSMutableArray*)getTableData{
    NSMutableArray * array = [[NSMutableArray alloc]init];
    Person *person1 =[Person initPersoneWithName:@"刘备" Describe:@"双股剑" Icon:@"switch.png"];
    Person *person2 =[Person initPersoneWithName:@"关羽" Describe:@"青龙偃月刀" Icon:@"switch.png"];
    Person *person3 =[Person initPersoneWithName:@"张飞" Describe:@"丈八蛇矛" Icon:@"switch.png"];
    [array addObject:person1];
    [array addObject:person2];
    [array addObject:person3];
    
    return array;
}

@end
