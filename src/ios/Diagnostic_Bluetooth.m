/*
 *  Diagnostic_Bluetooth.m
 *  Diagnostic Plugin - Bluetooth Module
 *
 *  Copyright (c) 2018 Working Edge Ltd.
 *  Copyright (c) 2012 AVANTIC ESTUDIO DE INGENIEROS
 */

#import "Diagnostic_Bluetooth.h"

@implementation Diagnostic_Bluetooth

// Internal reference to Diagnostic singleton instance
static Diagnostic* diagnostic;

// Internal constants
static NSString*const LOG_TAG = @"Diagnostic_Bluetooth[native]";

- (void)pluginInitialize {
    
    [super pluginInitialize];

    diagnostic = [Diagnostic getInstance];
}

/********************************/
#pragma mark - Plugin API
/********************************/

- (void) isBluetoothAvailable: (CDVInvokedUrlCommand*)command
{
    bool bluetoothEnabled = false;
    [diagnostic sendPluginResultBool:bluetoothEnabled :command];
}

- (void) getBluetoothState: (CDVInvokedUrlCommand*)command
{
    NSString* state = @"unknown";
    [diagnostic sendPluginResultString:state:command];
}

- (void) requestBluetoothAuthorization: (CDVInvokedUrlCommand*)command
{
    [diagnostic sendPluginResult:[CDVPluginResult resultWithStatus:CDVCommandStatus_OK] :command];
}

- (void) ensureBluetoothManager: (CDVInvokedUrlCommand*)command
{
    [diagnostic sendPluginResult:[CDVPluginResult resultWithStatus:CDVCommandStatus_OK] :command];

}

@end
