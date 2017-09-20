//
//  Serch.m
//  bkgApp
//
//  Created by ADMINISTRATOR on 18/09/17.
//  Copyright © 2017 Appddiction. All rights reserved.
//

#import "Serch.h"
#import "SearchTableViewCell.h"
#import "CellClickNavigation.h"


@interface Serch ()

@end

@implementation Serch

NSArray *headerTextArray,*headerSubArray,*feesArray;

-(void)viewWillAppear:(BOOL)animated
{
 
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UINib *tablNib = [UINib nibWithNibName:@"SearchTableViewCell" bundle:nil];
    [ClinicTableListView registerNib:tablNib forCellReuseIdentifier:@"SearchTableViewCell"];

    
    searchtext.delegate=self;
    
    headerTextArray = [NSArray arrayWithObjects:@"Chan Wain Ming Medical Clinic", @"Chan Wain Ming Medical Clinic", @"Chan Wain Ming Medical Clinic", @"Chan Wain Ming Medical Clinic", @"Chan Wain Ming Medical Clinic", @"Chan Wain Ming Medical Clinic", @"Chan Wain Ming Medical Clinic", @"Chan Wain Ming Medical Clinic", @"Chan Wain Ming Medical Clinic", @"Chan Wain Ming Medical Clinic", @"Chan Wain Ming Medical Clinic", @"Chan Wain Ming Medical Clinic", @"Chan Wain Ming Medical Clinic", @"Chan Wain Ming Medical Clinic", @"Chan Wain Ming Medical Clinic", @"Chan Wain Ming Medical Clinic", nil];
    
    
        headerSubArray = [NSArray arrayWithObjects:@"kowloon Tsim Tsui Hankow Road", @"kowloon Tsim Tsui Hankow Road", @"kowloon Tsim Tsui Hankow Road", @"kowloon Tsim Tsui Hankow Road", @"kowloon Tsim Tsui Hankow Road", @"kowloon Tsim Tsui Hankow Road", @"kowloon Tsim Tsui Hankow Road", @"kowloon Tsim Tsui Hankow Road", @"kowloon Tsim Tsui Hankow Road", @"kowloon Tsim Tsui Hankow Road", @"kowloon Tsim Tsui Hankow Road", @"kowloon Tsim Tsui Hankow Road", @"kowloon Tsim Tsui Hankow Road", @"kowloon Tsim Tsui Hankow Road", @"kowloon Tsim Tsui Hankow Road", @"kowloon Tsim Tsui Hankow Road", nil];

    searchview.hidden=YES;
    distanceView.hidden=YES;
    ClinicTableListView.hidden=YES;
    mapContainerView.hidden=NO;
    mapButton.hidden=YES;
    
    
    
    mapSearchedTextfield.layer.cornerRadius=8.0f;
    mapSearchedTextfield.layer.masksToBounds=YES;
    mapSearchedTextfield.layer.borderColor=[[UIColor greenColor]CGColor];
    mapSearchedTextfield.layer.borderWidth= 1.0f;

    
    
 _var_line2.backgroundColor = [UIColor lightGrayColor];
 _Ver_line1.backgroundColor = [UIColor lightGrayColor];
    
    
    ClinicTableListView.dataSource = self;
    

    
//    //Make this controller the delegate for the map view.
//    mapKitView.delegate = self;
//    
//    // Ensure that you can view your own location in the map view.
//    [mapKitView setShowsUserLocation:YES];
//    
//    //Instantiate a location object.
//    locationManager = [[CLLocationManager alloc] init];
//    
//    //Make this controller the delegate for the location manager.
//    [locationManager setDelegate:self];
//    
//    //Set some parameters for the location object.
//    [locationManager setDistanceFilter:kCLDistanceFilterNone];
//    [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
    
  
    
    // Tab icons Selected /Deselected goes here
    
    UITabBarItem *tabBarItem0 = [self.tabBarController.tabBar.items objectAtIndex:0];
    
    [tabBarItem0 setImage:[[UIImage imageNamed:@"Tab_Serch_Nonselected.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [tabBarItem0 setSelectedImage:[[UIImage imageNamed:@"Tab_Serch.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
    
    UITabBarItem *tabBarItem1 = [self.tabBarController.tabBar.items objectAtIndex:1];
    
    [tabBarItem1 setImage:[[UIImage imageNamed:@"Tab_Time.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [tabBarItem1 setSelectedImage:[[UIImage imageNamed:@"Tab_Time_Selected.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
    
    UITabBarItem *tabBarItem2 = [self.tabBarController.tabBar.items objectAtIndex:2];
    
    [tabBarItem2 setImage:[[UIImage imageNamed:@"Tab_Fav.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [tabBarItem2 setSelectedImage:[[UIImage imageNamed:@"Tab_Fav_Selected.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
    
    UITabBarItem *tabBarItem3 = [self.tabBarController.tabBar.items objectAtIndex:3];
    
    [tabBarItem3 setImage:[[UIImage imageNamed:@"Tab_Profile.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [tabBarItem3 setSelectedImage:[[UIImage imageNamed:@"Tab_Profile_Selected.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
    
    
}

- (IBAction)tapOnList:(id)sender {
    
    ClinicTableListView.hidden=NO;
    mapContainerView.hidden=YES;
    listButton.hidden=YES;
    mapButton.hidden=NO;
    distanceView.hidden=YES;
    
     mapSearchdList.hidden=YES;
     mapSearchedTextfield.hidden=YES;
    
}
- (IBAction)tapOnMap:(id)sender {
    
    ClinicTableListView.hidden=YES;
    mapContainerView.hidden=NO;
    listButton.hidden=NO;
    mapButton.hidden=YES;
    searchview.hidden=YES;
    SearchBtn.hidden=NO;
    distanceView.hidden=YES;
    
    mapSearchdList.hidden=NO;
    mapSearchedTextfield.hidden=NO;
    
}

// Table content goes here
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [headerTextArray count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 107.f;

}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SearchTableViewCell";
    
    SearchTableViewCell *cell = (SearchTableViewCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    

     cell.HeaderText.text = [headerTextArray objectAtIndex:indexPath.row];
     cell.HeaderSubText.text = [headerSubArray objectAtIndex:indexPath.row];
    
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    CellClickNavigation *vc = [storyboard instantiateViewControllerWithIdentifier:@"CellClickNavigation"];
    [self presentViewController:vc animated:YES completion:nil];
    
}

// Search button in navigation bar

- (IBAction)SerchButtonTap:(id)sender
{
    
    searchview.hidden=NO;
    
    SearchBtn.hidden=YES;
    
    distanceView.hidden=YES;
}

// Distance button tap in subheader view
- (IBAction)distanceTap:(id)sender {
    
     distanceView.hidden=NO;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (IBAction)SearchHit:(id)sender {
    
    ClinicTableListView.hidden=NO;
    listButton.hidden=YES;
    mapButton.hidden=NO;
    mapSearchdList.hidden=YES;
    mapSearchedTextfield.hidden=YES;
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField;        // return NO to disallow editing.
{
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField;
{
   
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField;
{
    return YES;
}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string;
{
    return YES;
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField;
{
    
    
    
    return YES;
}






@end

