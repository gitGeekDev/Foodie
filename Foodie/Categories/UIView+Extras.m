//
//  UIView+Extras.m
//  ChargePoint
//
//  Created by Navi Singh on 4/15/14.
//  Copyright (c) 2014 Chargepoint Inc.  All rights reserved.
//

#import "UIView+Extras.h"

@implementation UIView (Extras)

@dynamic x, left;
-(CGFloat)x{
    return self.frame.origin.x;
}
-(void)setX:(CGFloat)left{
    self.frame = CGRectMake(left, self.frame.origin.y, self.frame.size.width, self.frame.size.height);
}
-(CGFloat)left{ return self.x;}
-(void)setLeft:(CGFloat)left{[self setX:left];}

@dynamic y, top;
-(CGFloat)y{
    return self.frame.origin.y;
}
-(void)setY:(CGFloat)top{
    self.frame = CGRectMake(self.frame.origin.x, top, self.frame.size.width, self.frame.size.height);
}
-(CGFloat)top{return self.y;}
-(void)setTop:(CGFloat)top{[self setY:top];}

@dynamic right;
-(CGFloat)right{
    return self.frame.origin.x + self.frame.size.width;
}
-(void)setRight:(CGFloat)right{
    self.frame = CGRectMake(right - self.frame.size.width, self.frame.origin.y, self.frame.size.width, self.frame.size.height);
}

@dynamic bottom;
-(CGFloat)bottom{
    return self.frame.origin.y + self.frame.size.height;
}
-(void)setBottom:(CGFloat)bottom{
    self.frame = CGRectMake(self.frame.origin.x, bottom - self.frame.size.height, self.frame.size.width, self.frame.size.height);
}

@dynamic width;
-(CGFloat)width{
    return self.frame.size.width;
}
-(void)setWidth:(CGFloat)width{
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, width, self.frame.size.height);
}
@dynamic height;
-(CGFloat)height{
    return self.frame.size.height;
}
-(void)setHeight:(CGFloat)height{
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, height);
}

-(void)adjustRightTo:(CGFloat)right
{
    self.width = right - self.left;
}
-(void)adjustBottomTo:(CGFloat)bottom
{
    self.height = bottom - self.top;
}
-(void)adjustLeftTo:(CGFloat)left
{
    self.width = self.width + self.left - left;
    self.left = left;
}
-(void)adjustTopTo:(CGFloat)top
{
    self.height = self.height + self.top - top;
    self.top = top;
}


@end
