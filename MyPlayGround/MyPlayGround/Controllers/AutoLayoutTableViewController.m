//
//  AutoLayoutTableViewController.m
//  MyPlayGround
//
//  Created by lin on 15/11/18.
//  Copyright © 2015年 grey. All rights reserved.
//

#import "AutoLayoutTableViewController.h"
#import "AutoLayoutCell.h"
#import "AutoModel.h"

@interface AutoLayoutTableViewController ()
@property(nonatomic,strong)NSMutableArray *data;
@end

@implementation AutoLayoutTableViewController

-(NSMutableArray *)data{
    if (!_data) {
         _data=[[NSMutableArray alloc] init];
    }
    return _data;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createData];
    [self.tableView reloadData];
}
- (void)createData{
    NSMutableString *str1 = [[NSMutableString alloc] init];
    NSString *str2;
    for (int i=0; i<10; i++) {
        [str1 appendString:@"hahahahahhahahhahah"];
        if (i%2) {
            str2 = @"hhhahahahahahahahhahah";
        }
        str2 = @"hhhahahahahahahahhahah";
        AutoModel *model = [AutoModel new];
        model.title = str1;
        model.content = str2;
        [self.data addObject:model];
    }
    
    
  
}

#pragma mark - Table view data source



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.data.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    AutoLayoutCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ID" forIndexPath:indexPath];
    AutoModel *model = self.data[indexPath.row];
    [cell setModel:model];
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static AutoLayoutCell *cell;
    //只初始化一次cell
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        cell = [tableView dequeueReusableCellWithIdentifier:@"ID"];
    });
    AutoModel *model = self.data[indexPath.row];
     [cell setModel:model];
    if (model.height<=0) {
        model.height = [cell.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize].height+1;
    }
    return model.height;
   
    
//    if (model.cellHeight <= 0) {
//        //使用systemLayoutSizeFittingSize获取高度
//        model.cellHeight = [cell.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize].height + 1;
//    }
//    return model.cellHeight;
    
    return  [cell.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize].height + 1;
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
