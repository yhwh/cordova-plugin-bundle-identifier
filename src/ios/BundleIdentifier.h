//
//  TweetComposer.h
//
//  Created by Calvin Lai on 8/11/13.
//
//

#import <Foundation/Foundation.h>
#import <Cordova/CDVPlugin.h>
#import <Social/Social.h>
#import <Accounts/Accounts.h>

@interface BundleIdentifier : CDVPlugin {

  NSMutableDictionary* callbackIds;


}

@property (nonatomic, retain) NSMutableDictionary* callbackIds;


- (void)get:(CDVInvokedUrlCommand*)command;

@end