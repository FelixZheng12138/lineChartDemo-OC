//
//  ViewController.h
//  chartDemo
//
//  Created by xmly on 2019/4/25.
//  Copyright © 2019年 xmly. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <Charts/Charts-Swift.h>
@interface ViewController : NSViewController
<ChartViewDelegate>{
    
}
@property (nonatomic, strong)CombinedChartView      *combinedChartView;
@property (nonatomic, strong)BarChartView           *barChartView;
@property (nonatomic, strong)LineChartView          *depthChartView;
@end

