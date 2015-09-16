
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize imageview;
- (void)viewDidLoad {
    [super viewDidLoad];
    
   
    
    
    
    //[imageview setFrame:CGRectMake(0, 0, 321,222)];
    
    UIImage *img2 = [UIImage imageNamed:@"1.png" ];
   
    
    
    UIGraphicsBeginImageContextWithOptions(img2.size, NO, 0);
   UIBezierPath *aPath = [UIBezierPath bezierPath];
    [aPath moveToPoint:CGPointMake(0, 0)];
    [aPath addLineToPoint:CGPointMake(0,75)];
    [aPath addQuadCurveToPoint:CGPointMake(321,75) controlPoint:CGPointMake(321/2,222)];
    [aPath addLineToPoint:CGPointMake(321, 0)];
    [aPath addLineToPoint:CGPointMake(0, 0)];
    [aPath closePath];
    [aPath addClip];
    [img2 drawAtPoint:CGPointZero];
    UIImage *maskedImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    
    
    [imageview setImage:maskedImage];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}

@end
