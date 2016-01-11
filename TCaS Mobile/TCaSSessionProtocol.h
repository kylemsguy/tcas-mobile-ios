//
//  TCaSSession.h
//  TCaS Mobile
//
//  Created by Kyle Zhou on 2016-01-11.
//  Copyright © 2016 Kyle Zhou. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TCaSSession <NSObject>

+ (NSString *)getPageFromUrl: (NSString *) url withParams: (NSString *)params;
+ (NSString *)sendUrlPostToUrl: (NSString *) url withParams: (NSString *)params;
//+ (NSString *)sendMultipartPostToUrl: (NSString *) url withParams: (NSArray *) array;

@end
