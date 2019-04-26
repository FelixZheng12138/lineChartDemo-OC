//
//  ViewController.m
//  chartDemo
//
//  Created by xmly on 2019/4/25.
//  Copyright © 2019年 xmly. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSRect Copy = NSMakeRect(0, 0, 400, 200);
    _depthChartView = [[LineChartView alloc] initWithFrame:Copy];
    _depthChartView.gridBackgroundColor = [NSColor redColor];

    LineChartData * data = [[LineChartData alloc]init];
    
    NSArray *arr = @[@1,@2,@3,@4];
    NSMutableArray *dataSet = [[NSMutableArray alloc]init];
//    ChartDataEntry *dataEntry = nil;
    for(double i = 0;i<[arr count];i++)
    {
        ChartDataEntry *dataEntry =[[ChartDataEntry alloc]initWithX:i y:[[arr objectAtIndex:i]doubleValue]];
        [dataSet addObject:dataEntry];
    }
    
    LineChartDataSet *lcds = [[LineChartDataSet alloc]initWithEntries:dataSet label:@"aaa"];
    [lcds setCircleColor:[NSColor redColor]] ;
    [data addDataSet:lcds];
    self.depthChartView.data = data;
    [self.depthChartView animateWithXAxisDuration:0.0 yAxisDuration:1.0];
    [self.view addSubview:_depthChartView];

    
    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
