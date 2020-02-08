//
//  OpenCVWrapper.h
//  OpenCV
//
//  Created by Adrián godoy martinez on 08/02/2020.
//  Copyright © 2020 Adrián Godoy Martínez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface OpenCVWrapper : NSObject;


+ (NSString *)getOpenCVVersion;

// Convert to grayscale
+ (UIImage *) convertToGrayscale: (UIImage *) image;

+ (UIImage *) classifyImage: (UIImage *) image;


@end



NS_ASSUME_NONNULL_END
