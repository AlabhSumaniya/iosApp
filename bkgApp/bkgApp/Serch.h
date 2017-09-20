//
//  Serch.h
//  bkgApp
//
//  Created by ADMINISTRATOR on 18/09/17.
//  Copyright © 2017 Appddiction. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <MapKit/MapKit.h>

#import <CoreLocation/CoreLocation.h>


@interface Serch : UIViewController <UITableViewDelegate, UITableViewDataSource,UITextFieldDelegate,MKMapViewDelegate,CLLocationManagerDelegate>

{
    IBOutlet UIView *searchview;
   
    CLLocationManager *locationManager;
    
    IBOutlet MKMapView *mapKitView;
    IBOutlet UIView *mapContainerView;
   
    IBOutlet UIView *tableContainerView;
   
    IBOutlet UITextField *searchtext;
   
    IBOutlet UIView *HeaderSubview;
   
    IBOutlet UITableView *ClinicTableListView;
    IBOutlet UIButton *SearchBtn;
    
    IBOutlet UIButton *listButton;
  
    IBOutlet UIButton *mapButton;
    IBOutlet UIView *distanceView;
   
    IBOutlet UIView *mapSearchdList;
 
    IBOutlet UITextField *mapSearchedTextfield;
}

@property (strong, nonatomic) IBOutlet UILabel *Ver_line1;

@property (strong, nonatomic) IBOutlet UILabel *var_line2;

@end
