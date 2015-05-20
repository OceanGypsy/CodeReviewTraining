//
//  ViewController.m
//  CodeReview
//
//  Created by Oleksandra Revizina on 5/20/15.
//  Copyright (c) 2015 Softserve. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *numbersTextView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self showNumbers];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) showNumbers {
    NSMutableString * numbersString = [NSMutableString stringWithString:@""];
    for (NSUInteger i = 1; i<101; i++) {

        NSString * temp = ((i%3 == 0)&&(i%5 == 0))?@"FizzBuzz  ":((i%3 == 0)?@"Fizz  ":(i%5 == 0)?@"Buzz  ":[NSString stringWithFormat: @"%lu  ",(unsigned long)i]);

        [numbersString appendString:temp];

    }
    self.numbersTextView.text = numbersString;
}

@end
