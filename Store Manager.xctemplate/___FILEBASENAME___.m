//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___FILEBASENAME___.h"


@implementation ___FILEBASENAMEASIDENTIFIER___


// +---------------------------------------------------------------------------+
#pragma mark - Init
// +---------------------------------------------------------------------------+


+ (instancetype) shared___FILEBASENAMEASIDENTIFIER___ {
    static ___FILEBASENAMEASIDENTIFIER___ *sharedManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once ( &onceToken, ^{
        sharedManager = [[self alloc] init];
    });

    return sharedManager;
}


// +---------------------------------------------------------------------------+
#pragma mark - Archive / Unarchive
// +---------------------------------------------------------------------------+


- (void) clearAllStoredData {
    NSString * appDomain = [[NSBundle mainBundle] bundleIdentifier];
    [[NSUserDefaults standardUserDefaults] removePersistentDomainForName:appDomain];
}

// +---------------------------------------------------------------------------+

- (void) storeData:(id)pData withName:(NSString *)pName {
    NSUserDefaults * defaults = [NSUserDefaults standardUserDefaults];
    NSData * data = [NSKeyedArchiver archivedDataWithRootObject:pData];
    [defaults setObject:data forKey:pName];
    NSAssert([defaults synchronize], @"KO: storeData won't syncronize!");
}

// +---------------------------------------------------------------------------+

- (id) loadDataWithName:(NSString *)pName {
    id unark    = [[NSUserDefaults standardUserDefaults] objectForKey:pName];
    id retUnark = nil;

    if ( unark ) {
        @try {
            retUnark = [NSKeyedUnarchiver unarchiveObjectWithData:unark];
        }
        @catch (NSException *exception) { return nil; }
        return retUnark;
    }
    return nil;
}


@end

