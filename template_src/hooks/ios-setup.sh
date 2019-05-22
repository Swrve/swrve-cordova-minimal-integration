#!/bin/bash
#search for the "AppDelegate" and replace for the SwrveAppDelegate integrated Template.
find platforms/ios/ -name "AppDelegate.m" -exec cp -fr integration-utils/ios/AppDelegate.m {} \;
