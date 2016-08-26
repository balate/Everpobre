//
//  AppDelegate.h
//  Everpobre
//
//  Created by Javier Contreras on 20/8/16.
//  Copyright © 2016 Ocon. All rights reserved.
//

#import <UIKit/UIKit.h>
@class JCOSimpleCoreDataStack;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong,nonatomic) JCOSimpleCoreDataStack *model;

@end

