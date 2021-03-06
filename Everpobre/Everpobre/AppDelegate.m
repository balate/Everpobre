//
//  AppDelegate.m
//  Everpobre
//
//  Created by Javier Contreras on 20/8/16.
//  Copyright © 2016 Ocon. All rights reserved.
//

#import "AppDelegate.h"
#import "JCOSimpleCoreDataStack.h"

#import "JCONote.h"
#import "JCONoteBook.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Crear una instacia de stackCoreData
    self.model = [JCOSimpleCoreDataStack coreDataStackWithModelName:@"Model"];
    
    [self trastearConDatos];
    
    [self autoSave];
    
    self.window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    
    [self save];
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    
    [self save];
    
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    
    NSLog(@"Adios mundo cruel");
}


#pragma mark - Utils

-(void) trastearConDatos{
    
    JCONoteBook *novias =[JCONoteBook notebookWithName:@"Ex-novias para el recuerdo"
                                               context:self.model.context];
    
    [JCONote noteWhitNane:@"camila"
                 notebook:novias
                  context:self.model.context];
    
    [JCONote noteWhitNane:@"pampita"
                 notebook:novias
                  context:self.model.context];

    
    //Guardamos
    [self save];
    
}


-(void)save{

    [self.model saveWithErrorBlock:^(NSError *error) {
        NSLog(@"Error al guardar %s \n\n %@", __func__,error);
    }];
}


-(void)autoSave{

    NSLog(@"Autoguardando");
    
    [self save];
    
    [self performSelector:@selector(autoSave)
               withObject:nil
               afterDelay:2];
    
}





@end
