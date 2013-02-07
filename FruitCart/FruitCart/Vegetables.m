//
//  Vegetables.m
//  FruitCart
//
//  Created by unnugi on 2/6/13.
//  Copyright (c) 2013 DavidEvans. All rights reserved.
//

#import "Vegetables.h"

@implementation Vegetables

-initWithWithName:(NSString *) inName andColor:(NSString *) inColor andShape:(NSString *) inShape
{
    _name = inName;
    _shape = inShape;
    _color = inColor;
    return self;
}

-(NSString *) description
{
    return _name;
}


@end
