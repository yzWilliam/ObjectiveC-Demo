//
//  ViewController.m
//  objcDemo
//
//  Created by Zhiwei Yu on 3/2/21.
//

#import "ViewController.h"
#import "Test.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Test *test = [[Test alloc] init];
    [test areaOfSquare:1];
    [test areaOfCircle:2];
    [test areaOfRectangle:3 height:4];
    [test simpleInterest:5 r:6 t:7];
    test.name = @"Hi, this is a test";
    NSLog(@"%@", test.name);
    
    
    myArray = [[NSMutableArray alloc] initWithObjects:
                  @"New Delhi", @"Mumbai", @"Hyderabad",
                  @"Bangalore", @"Sydney", @"Melbourne",
                  @"Brisbane", @"Perth", @"New York",
                  @"Los Angeles", @"Chicago", @"Boston", nil];
}


- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    static NSString *cellId = @"SimpleTableId";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:
                             cellId];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:
                UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    NSString *stringForCell;
    if (indexPath.section == 0) {
        stringForCell= [myArray objectAtIndex:indexPath.row];
        
    }
    else if (indexPath.section == 1){
        stringForCell= [myArray objectAtIndex:indexPath.row+ [myArray count]/3];
        
    }
    else if (indexPath.section == 2){
        stringForCell= [myArray objectAtIndex:indexPath.row+ 2*[myArray count]/3];
    }
    [cell.textLabel setText:stringForCell];
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [myArray count]/3;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 3;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:
(NSInteger)section{
    NSString *headerTitle;
    if (section==0) {
        headerTitle = @"India";
    }
    else if(section==1){
        headerTitle = @"Australia";
        
    }
    else{
        headerTitle = @"United States of America";
    }
    return headerTitle;
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:
(NSInteger)section{
    NSString *footerTitle;
    if (section==0) {
        footerTitle = @"End of prominent cities of India";
    }
    else if (section==1){
        footerTitle = @"End of prominent cities of Australia";
        
    }
    else if (section==2){
        footerTitle = @"End of prominent cities of USA";
        
    }
    return footerTitle;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:
(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    NSLog(@"Section:%ld Row:%ld selected and its data is %@",
          (long)indexPath.section,(long)indexPath.row,cell.textLabel.text);
}

@end
