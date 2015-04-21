//
//  ViewController.m
//  Stopwatch App
//
//  Created by Foysal Ahmed Emon on 4/21/15.
//  Copyright (c) 2015 Foysal Ahmed Emon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@property (strong, nonatomic) IBOutlet

UILabel *display;

- (IBAction)buttonPressed:(id)sender;


@end

@implementation ViewController {

    bool start ;
    NSTimeInterval time ;
    
    

}





- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.display.text = @"0:00"  ;
    
    start = false ;
    
    
    
}


-(void)update {
    if (start==false) {
        return ;
        
    }
    
    
    NSTimeInterval currentTime =  [ NSDate timeIntervalSinceReferenceDate] ;
    
    NSTimeInterval elapssedTime = currentTime-time ;
    
    
    int minute = (int)elapssedTime/60 ;
    int second = (int)(elapssedTime=elapssedTime-(minute*60)) ;
    
    self.display.text = [NSString stringWithFormat: @"%u:%2u",minute,second] ;
    
    [self performSelector:@selector(update) withObject:self afterDelay:0.1] ;
    
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender {
    
    if (start == false) {
        start=true;
        time =  [NSDate timeIntervalSinceReferenceDate ];
        
        [sender setTitle:@"aaaaa" forState:UIControlStateNormal] ;
        self.display.text = @"Stop ";
        [self update] ;
        
        
    }
    else
        start = false ;
    
    [sender setTitle:@"START" forState:UIControlStateNormal];
    
}
@end
