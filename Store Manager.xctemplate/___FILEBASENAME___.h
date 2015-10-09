//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import <Foundation/Foundation.h>

@interface ___FILEBASENAMEASIDENTIFIER___ : NSObject

+ (instancetype) shared___FILEBASENAMEASIDENTIFIER___;

- (void) clearAllStoredData;

- (void) storeData:(id)pData withName:(NSString *)pName;

- (id) loadDataWithName:(NSString *)pName;

@end
