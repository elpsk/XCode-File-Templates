//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___FILEBASENAME___.h"

@interface ___FILEBASENAMEASIDENTIFIER___ () {
    IBOutlet UIView *_containerView;
}
@end


@implementation ___FILEBASENAMEASIDENTIFIER___


// +---------------------------------------------------------------------------+
#pragma mark - Initialization
// +---------------------------------------------------------------------------+


- (instancetype)init {
    self = [super init];
    if (self) {
        [self commontInit];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        [self commontInit];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self commontInit];
    }
    return self;
}

- (void) commontInit {
    [[NSBundle mainBundle] loadNibNamed:@"___FILEBASENAMEASIDENTIFIER___" owner:self options:nil];

    [self addSubview:_containerView];
    self.frame = _containerView.frame;
}


@end

