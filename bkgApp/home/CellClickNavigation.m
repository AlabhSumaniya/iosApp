//
//  CellClickNavigation.m
//  bkgApp
//
//  Created by ADMINISTRATOR on 19/09/17.
//  Copyright © 2017 Appddiction. All rights reserved.
//

#import "CellClickNavigation.h"
#import "Serch.h"

@interface CellClickNavigation ()

@end

@implementation CellClickNavigation

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _genButton.layer.cornerRadius=_genButton.layer.frame.size.width/5;
    _genButton.layer.borderWidth=1.0f;
    _genButton.layer.borderColor=[UIColor darkGrayColor].CGColor;
   
}
- (IBAction)BackTap:(id)sender {
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    Serch *vc = [storyboard instantiateViewControllerWithIdentifier:@"Serch"];
    [self presentViewController:vc animated:YES completion:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
