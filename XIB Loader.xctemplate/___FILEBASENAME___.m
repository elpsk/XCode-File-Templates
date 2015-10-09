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
#pragma mark - Loader
// +---------------------------------------------------------------------------+


- (void) loadXibView:(NSString *)pClass fromView:(UIView *)pFromView
{
    [[NSBundle mainBundle] loadNibNamed:pClass owner:pFromView options:nil];
}

- (void) loadXibView:(NSString *)pClass fromView:(UIView *)pFromView inTable:(UITableView *)table
{
    UINib * customNib = [UINib nibWithNibName:pClass bundle:nil];

    [customNib instantiateWithOwner:pFromView options:nil];
    [table registerNib:customNib forCellReuseIdentifier:[customNib description]];
}


@end

