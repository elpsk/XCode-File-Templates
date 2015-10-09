//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___FILEBASENAME___.h"

@interface ___FILEBASENAMEASIDENTIFIER___ () <NSCoding> {

}
@end


@implementation ___FILEBASENAMEASIDENTIFIER___


// +---------------------------------------------------------------------------+
#pragma mark - Init
// +---------------------------------------------------------------------------+


/*
- (instancetype) init {
    self = [super init];
    if (self) {

    }
    return self;
}
*/

/*
+ (instancetype) shared___FILEBASENAMEASIDENTIFIER___ {
    static ___FILEBASENAMEASIDENTIFIER___ *sharedManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once ( &onceToken, ^{
        sharedManager = [[self alloc] init];
    });

    return sharedManager;
}
*/


// +---------------------------------------------------------------------------+
#pragma mark - Encoder / Decoder
// +---------------------------------------------------------------------------+


- (id) initWithCoder:(NSCoder *)decoder {
    self = [super init];
    if (self) {
        // self.<#object#> = [decoder decodeObjectForKey:@"<#string#>"];
    }
    return self;
}

- (void) encodeWithCoder:(NSCoder *)encoder {
    // [encoder encodeObject:self.<#object#> forKey:@"<#string#>"];
}


@end

