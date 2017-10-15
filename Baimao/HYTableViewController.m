//
//  HYTableViewController.m
//  Baimao
//
//  Created by GOKIT on 2017/10/15.
//  Copyright © 2017年 GOKIT. All rights reserved.
//

#import "HYTableViewController.h"
#import "HYTableViewCell.h"

@interface HYTableViewController ()

@property (nonatomic,strong) NSMutableArray<NSString *> *arrData;

@end

@implementation HYTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _arrData = [[NSMutableArray alloc]init];

    [_arrData addObject:@"你好"];
    [_arrData addObject:@"你好"];
    [_arrData addObject:@"朱雀桥边野草花，乌衣巷口夕阳斜。旧时王谢堂前燕，飞入寻常百姓家。"];
    [_arrData addObject:@"朱雀桥边野草花，乌衣巷口夕阳斜。旧时王谢堂前燕，飞入寻常百姓家。"];
    [_arrData addObject:@"怎么这么晚了，还不睡觉呢？"];
    [_arrData addObject:@"还好了，不是很晚，我还有工作要做..."];
    [_arrData addObject:@"好吧！那你不要熬的太晚，对身体不好，明天不是要上班吗？"];
    [_arrData addObject:@"是的，快做完了，马上就可以睡觉了"];
    [_arrData addObject:@"你也早点休息吧"];
    [_arrData addObject:@"好的"];
    [_arrData addObject:@"晚安"];
    [_arrData addObject:@"晚安"];
    [_arrData addObject:@"朱雀桥边野草花，乌衣巷口夕阳斜。旧时王谢堂前燕，飞入寻常百姓家。朱雀桥边野草花，乌衣巷口夕阳斜。旧时王谢堂前燕，飞入寻常百姓家。"];
    [_arrData addObject:@"朱雀桥边野草花，乌衣巷口夕阳斜。旧时王谢堂前燕，飞入寻常百姓家。朱雀桥边野草花，乌衣巷口夕阳斜。旧时王谢堂前燕，飞入寻常百姓家。"];

    [self.tableView reloadData];

//    NSString *str = @"朱雀桥边野草花，乌衣巷口夕阳斜。旧时王谢堂前燕，飞入寻常百姓家。";
//
//    CGSize size = [self sizeOfTextWithMaxSize:CGSizeMake(200, CGFLOAT_MAX) forFont:[UIFont systemFontOfSize:15.0] andText:str];
//
//    NSLog(@"计算文本大小：宽：%f，高：%f",size.width,size.height);
//
//    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(50, 50, 210, size.height + 10)];
//    [label.layer setMasksToBounds:YES];
//    [label.layer setBorderWidth:5];
//    [label.layer setCornerRadius:5];
//    [label setFont:[UIFont systemFontOfSize:15.0]];
//    [label setBackgroundColor:[UIColor grayColor]];
//    [label setNumberOfLines:0];
//    [label setText:str];
//
//    [self.view addSubview:label];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//计算文本大小
- (CGSize)sizeOfTextWithMaxSize:(CGSize )maxSize forFont:(UIFont *)font andText:(NSString *)text{

    NSDictionary *attrs = @{NSFontAttributeName : font};
    return [text boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil].size;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return _arrData.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{

    NSString *text = [_arrData objectAtIndex:indexPath.row];

    CGSize size = [self sizeOfTextWithMaxSize:CGSizeMake(200, MAXFLOAT) forFont:[UIFont systemFontOfSize:15.0] andText:text];

    if (size.height > 40) {
        return 24 + size.height;
    }

    return 64;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"table_cell" forIndexPath:indexPath];

    HYTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"table_cell1"];
    if (!cell) {
        cell = [[HYTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"table_cell1"];
    }

    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];

    NSString *text = [_arrData objectAtIndex:indexPath.row];



    [cell.contentLabel setText:text];


    if ((indexPath.row % 2) == 0) {

        CGSize size = [self sizeOfTextWithMaxSize:CGSizeMake(200, MAXFLOAT) forFont:[UIFont systemFontOfSize:15.0] andText:text];

        if (size.height > 40) {

            [cell.contentLabel setFrame:CGRectMake(60, 12, size.width, size.height)];

        } else {

            [cell.contentLabel setFrame:CGRectMake(60, 12, size.width, 40)];
            
        }

        [cell.avatarImageView setFrame:CGRectMake(10, 10, 40, 40)];

    }else{


        CGSize size = [self sizeOfTextWithMaxSize:CGSizeMake(200, MAXFLOAT) forFont:[UIFont systemFontOfSize:15.0] andText:text];

        if (size.height > 40) {

            [cell.contentLabel setFrame:CGRectMake((320 - size.width - 60), 12, size.width, size.height)];

        } else {

            [cell.contentLabel setFrame:CGRectMake((320 - size.width - 60), 12, size.width, 40)];
            
        }

        [cell.avatarImageView setFrame:CGRectMake(270, 10, 40, 40)];

    }

    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}



/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
