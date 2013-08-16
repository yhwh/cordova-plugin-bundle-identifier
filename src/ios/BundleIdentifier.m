//
//  BundleIdentifier.m
//  Helper
//
//  Created by Calvin Lai on 7/17/13.
//
//

#import "BundleIdentifier.h"
#import <Cordova/CDVViewController.h>
#import <Cordova/CDVDebug.h>


@implementation BundleIdentifier

@synthesize callbackIds = _callbackIds;

- (NSMutableDictionary*)callbackIds {
    if (_callbackIds == nil) {
        _callbackIds = [[NSMutableDictionary alloc] init];
        return _callbackIds;
    }
}

- (void)get:(CDVInvokedUrlCommand*)command {
    NSLog(@"get:%@", command.arguments);

    [self.callbackIds setValue:command.callbackId forKey:@"get"];

    NSString *bundleId = [[NSBundle mainBundle] bundleIdentifier];
    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:bundleId];
    [self writeJavascript:[pluginResult toSuccessCallbackString:[self.callbackIds valueForKey:@"get"]]];
}


@end

