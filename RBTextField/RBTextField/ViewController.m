//
//  ViewController.m
//  RBTextField
//
//  Created by ru on 2017/6/16.
//  Copyright © 2017年 GMJK. All rights reserved.
//

#import "ViewController.h"

#import "RBTextField.h"


@interface ViewController ()<UITextFieldDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    RBTextField *textField = [[RBTextField alloc] initWithFrame:CGRectMake(100, 100, 200, 30)];
    
    
    textField.backgroundColor = [UIColor redColor];
    
    textField.delegate = self;
    
    
    [self.view addSubview:textField];
    
    
    
    
}


- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    
    
    
    //在什么位置插入空格
    NSArray *arr = @[@3,@7];
    
    [(RBTextField *)textField  insertWhitSpaceInsertPosition:arr replacementString:string textlength:12];
    
    
    return NO;
    
    
}



@end
