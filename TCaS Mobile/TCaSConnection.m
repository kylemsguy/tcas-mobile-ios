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

+ (NSString *)getPageFromUrl:(NSString *)url withParams:NSDictionary params {
    NSURL *urlObj = [NSURL URLWithString:url];

    // implement rest
    NSMutableURLRequest request = [NSMutableURLRequest requestWithURL: urlObj];
    request.HTTPMethod = @"GET";
    // This is how we set header fields
    [request setValue:@"application/x-www-form-urlencoded; charset=utf-8" forHTTPHeaderField:@"Content-Type"];

    if (params) {
      NSData *jsonData = [NSJSONSerialization dataWithJSONObject: params options:0 error:nil];
      NSString *urlString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
      NSString *stringData = [[NSString alloc] initWithFormat:@"jsonRequest=%@", urlString];
      NSData *requestBodyData = [stringData dataUsingEncoding:NSUTF8StringEncoding];
      request.HTTPBody = requestBodyData;
    }

    NSURLConnection *theConnection = [[NSURLConnection alloc] initWithRequest:request delegate:self];

    if (!theConnection) {
        // Release the receivedData object.
        NSMutableData *responseData = nil;

        // Inform the user that the connection failed.
        return nil;
    }
    return @"";
}

+ (NSString *)sendUrlPostToUrl:(NSString *)url withParams:(NSString *)params {
    NSURL *urlObj = [NSURL URLWithString:url];

    // implement rest
    NSMutableURLRequest request = [NSMutableURLRequest requestWithURL: urlObj];
    // This is how we set header fields
    [request setValue:@"application/x-www-form-urlencoded; charset=utf-8" forHTTPHeaderField:@"Content-Type"];

    return @"";
}


@end
