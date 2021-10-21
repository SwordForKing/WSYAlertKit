//
//  AppDelegate.h
//  WSYAlertViewProject
//
//  Created by zjlk32 on 2021/10/21.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

