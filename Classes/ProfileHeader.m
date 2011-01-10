//
//  ProfileHeader.m
//  ProfileView
//
//  Created by Ajay Chainani on 12/29/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "ProfileHeader.h"
#import "UIView+position.h"
#import <QuartzCore/QuartzCore.h>

@implementation ProfileHeader

@synthesize name, imageView;

- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
		self.backgroundColor = [UIColor groupTableViewBackgroundColor];

		imageView	= [[UIImageView alloc] initWithFrame:CGRectMake(20, 15, frame.size.height-30, frame.size.height-30)];
		imageView.backgroundColor = [UIColor whiteColor];
		imageView.contentMode =UIViewContentModeScaleAspectFill;
		//imageView.layer.cornerRadius = 10;
		imageView.layer.borderColor = [UIColor lightGrayColor].CGColor;
		imageView.layer.borderWidth = 1;
		imageView.layer.masksToBounds = YES;
		[self addSubview:imageView];
		
		name = [[UILabel alloc] initWithFrame:CGRectMake(20+imageView.frameX+imageView.frameWidth, imageView.frameY, 320-(30+imageView.frameX+imageView.frameWidth), imageView.frameWidth)];
		//name.text = @"Ca";
		name.font = [UIFont boldSystemFontOfSize:18];
		//name.textColor = [UIColor darkGrayColor];
		name.shadowColor = [UIColor whiteColor];
		name.shadowOffset = CGSizeMake(0, 1);
		name.backgroundColor = [UIColor clearColor];
		//name.textAlignment = UITextAlignmentCenter;
		[self addSubview:name];
        // Initialization code.
		
		UIImageView *indicatorImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"whitearrow.png"]];
		indicatorImage.frameX = 35;
		indicatorImage.frameY = frame.size.height-9;
		[self addSubview:indicatorImage];
		
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code.
	
	
	
}
*/
- (void)dealloc {
	[imageView release];
	[name release];
    [super dealloc];
}


@end
