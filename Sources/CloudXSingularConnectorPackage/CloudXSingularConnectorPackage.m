#import <CloudXSingularConnector/CloudXSingularConnector.h>

@interface CloudXSingularConnectorPackageLoader : NSObject
@end

@implementation CloudXSingularConnectorPackageLoader

+ (void)load {
    CloudXSingularConnectorRegister();
}

@end
