#import "AppDelegate.h"
#import "MainViewController.h"
#import "SwrvePlugin.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication*)application didFinishLaunchingWithOptions:(NSDictionary*)launchOptions
{
    self.viewController = [[MainViewController alloc] init];

    // SWRVE CHANGES
    SwrveConfig *config = [[SwrveConfig alloc] init];
    config.pushEnabled = true;
    // Set your app id and api key here
    [SwrvePlugin initWithAppID:-1 apiKey:@"<SwrveKey>" config:config viewController:self.viewController];
    // END OF CHANGES

    return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

// SWRVE CHANGES
#ifndef DISABLE_PUSH_NOTIFICATIONS

- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo fetchCompletionHandler:(void (^)(UIBackgroundFetchResult))completionHandler {

    BOOL handled = [SwrvePlugin application:application didReceiveRemoteNotification:userInfo withBackgroundCompletionHandler:^ (UIBackgroundFetchResult fetchResult, NSDictionary *swrvePayload) {
        // NOTE: Do not call the Swrve SDK from this context

        // Your code here to process a Swrve remote push and payload
        completionHandler(fetchResult);
    }];

    if (!handled) {
        // Your code here, it is either a non-background push received in the background or a non-Swrve remote push
        // You’ll have to process the payload on your own and call the completionHandler as normal
    }

}

#endif
// END OF CHANGES

@end
