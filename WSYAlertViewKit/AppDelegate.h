//
//  AppDelegate.h
//  WSYAlertViewKit
//
//  Created by zjlk32 on 2021/10/22.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

