#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "IOHIDEvent+KIF.h"
#import "KIF.h"
#import "KIFAccessibilityEnabler.h"
#import "KIFTextInputTraitsOverrides.h"
#import "KIFTypist.h"
#import "KIFUIObject.h"
#import "CAAnimation+KIFAdditions.h"
#import "CALayer-KIFAdditions.h"
#import "CGGeometry-KIFAdditions.h"
#import "NSBundle-KIFAdditions.h"
#import "NSError-KIFAdditions.h"
#import "NSException-KIFAdditions.h"
#import "NSFileManager-KIFAdditions.h"
#import "NSPredicate+KIFAdditions.h"
#import "NSString+KIFAdditions.h"
#import "UIAccessibilityElement-KIFAdditions.h"
#import "UIApplication-KIFAdditions.h"
#import "UIEvent+KIFAdditions.h"
#import "UIScreen+KIFAdditions.h"
#import "UIScrollView-KIFAdditions.h"
#import "UITableView-KIFAdditions.h"
#import "UITouch-KIFAdditions.h"
#import "UIView-KIFAdditions.h"
#import "UIWindow-KIFAdditions.h"
#import "UIView-Debugging.h"

FOUNDATION_EXPORT double KIFVersionNumber;
FOUNDATION_EXPORT const unsigned char KIFVersionString[];

