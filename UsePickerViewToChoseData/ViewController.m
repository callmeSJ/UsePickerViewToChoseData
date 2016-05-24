//
//  ViewController.m
//  UsePickerViewToChoseData
//
//  Created by Sj on 16/5/24.
//  Copyright © 2016年 SJ. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    list1 = [[NSMutableArray alloc]init];
    list2 = [[NSMutableArray alloc]init];
    list3 = [[NSMutableArray alloc]init];
    
    [list1 addObject:@"1"];
    [list1 addObject:@"2"];
    [list1 addObject:@"3"];
    
    [list2 addObject:@"4"];
    [list2 addObject:@"5"];
    [list2 addObject:@"6"];
    
    [list3 addObject:@"7"];
    [list3 addObject:@"8"];
    [list3 addObject:@"9"];
    
    
    
}
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 3;
}
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if(component == 0){
        return [list1 count];
    }
    else if (component == 1){
        return [list2 count];
        
    }else if (component == 2){
        return [list3 count];
    }
    return 0;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    if(component == 0){
        return [list1 objectAtIndex:row];
        
    }else if (component == 1){
        return [list2 objectAtIndex:row];
    }else if (component == 2){
        return  [list3 objectAtIndex:row];
    }
    return nil;
}
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    if(component == 0 ){
        NSLog(@"1选择了%@",[list1 objectAtIndex:row]);
    }else if (component == 1){
        NSLog(@"2选择了%@",[list2 objectAtIndex:row]);
    }else if(component == 2){
        NSLog(@"3选择了%@",[list3 objectAtIndex:row]);
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
