#import "CustomSearchBar.h"

@implementation CustomSearchBar
@synthesize delegate;

-(id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        customBackButtom = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 55, 30)];
        [customBackButtom addTarget:self action:@selector(cancelAction) forControlEvents:UIControlEventTouchUpInside];
        [customBackButtom setBackgroundImage:[UIImage imageNamed:@"btn.png"] forState:UIControlStateNormal];

        //Set other button states (hightlight, select, etc) here
    }    
    return self;
} 

-(void)drawRect:(CGRect)rect {
    [[[self subviews] objectAtIndex:0] setAlpha:0.0];
    UIImage *image = [UIImage imageNamed: @"nav_bar.png"];    
    [image drawInRect:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
}

-(void)layoutSubviews {
    for(UIView *subView in self.subviews) {
        if ([subView isKindOfClass:[UIButton class]]) {
            [subView  addSubview:customBackButtom];
        }
    }
    [super layoutSubviews];
}

-(void)cancelAction {
    [self.delegate customCancelButtonHit];
}

-(void)dealloc {
    [super dealloc];
}

@end