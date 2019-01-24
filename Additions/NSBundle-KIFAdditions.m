//
//  NSBundle+KIFAdditions.m
//  KIF
//
//  Created by Brian Nickel on 7/27/13.
//
//

#import "NSBundle-KIFAdditions.h"
#import "LoadableCategory.h"
#import "KIFUIObject.h"

MAKE_CATEGORIES_LOADABLE(NSBundle_KIFAdditions)

@implementation NSBundle (KIFAdditions)

+ (NSBundle *)KIFTestBundle
{
    static NSBundle *bundle;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        bundle = [self bundleForClass:[KIFUIObject class]];
    });
    return bundle;
}

@end
