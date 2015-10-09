//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface ___FILEBASENAMEASIDENTIFIER___ : NSObject

+ (instancetype) shared___FILEBASENAMEASIDENTIFIER___;

- (void) loadXibView:(NSString *)pClass fromView:(UIView *)pFromView;
- (void) loadXibView:(NSString *)pClass fromView:(UIView *)pFromView inTable:(UITableView *)table;

@end
