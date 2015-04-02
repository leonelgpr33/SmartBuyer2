//
//  ViewController.h
//  SmartBuyer
//
//  Created by LI Leonel G. Pérez Ramos on 29/03/15.
//  Copyright (c) 2015 LI Leonel G. Pérez Ramos. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>

@interface Login : UIViewController
@property (weak, nonatomic) IBOutlet FBSDKLoginButton *loginButton;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *menuButton;


@end

