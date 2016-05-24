//
//  ViewController.h
//  UsePickerViewToChoseData
//
//  Created by Sj on 16/5/24.
//  Copyright © 2016年 SJ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDelegate,UIPickerViewDataSource>
{
    NSMutableArray *list1,*list2,*list3;
}


@end

