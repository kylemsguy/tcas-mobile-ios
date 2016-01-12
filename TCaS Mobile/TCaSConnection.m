//
//  TCaSConnection.m
//  TCaS Mobile
//
//  Created by Kyle Zhou on 2016-01-11.
//  Copyright © 2016 Kyle Zhou. All rights reserved.
//

#include "TCaSSessionProtocol.h"
#import "TCaSConnection.h"
#import "tcas-api-cpp/TCaSRequest.h"

@implementation TCaSConnection

- (id)init{
    self = [super init];
    if (self) {
        // construct object

    }
    return self;
}

+ (NSString *)getPageFromUrl:(NSString *)url withParams:(TCaS_Backend::Request *)params {
    NSURL *urlObj = [NSURL URLWithString:url];

    // implement rest

    return @"";
}

+ (NSString *)sendUrlPostToUrl:(NSString *)url withParams:(NSString *)params {
    NSURL *urlObj = [NSURL URLWithString:url];

    // implement rest

    return @"";
}


@end
