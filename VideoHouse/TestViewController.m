//
//  TestViewController.m
//  VideoHouse
//
//  Created by gxw on 14/10/26.
//  Copyright (c) 2014年 b-star. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()
@property (nonatomic,retain) Glimpse* glimpse;
@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Glimpse* glimpse = [[Glimpse alloc] init];
    [self setGlimpse:glimpse];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    [self.glimpse startRecordingView:self.view onCompletion:^(NSURL *fileOuputURL) {
        NSLog(@"DONE WITH OUTPUT: %@", fileOuputURL.absoluteString);
    }];
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectInset(self.view.bounds, 40.0f, 40.0f)];
    view.backgroundColor = [UIColor greenColor];
    view.alpha = 0.0f;
    [self.view addSubview:view];
    
    [UIView animateWithDuration:5.0 animations:^{
        view.alpha = 1.0f;
    } completion:^(BOOL finished) {
        [self.glimpse stop];
    }];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
