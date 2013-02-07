//
//  Vegetables.h
//  FruitCart
//
//  Created by unnugi on 2/6/13.
//  Copyright (c) 2013 DavidEvans. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Vegetables : NSObject


@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSString * shape;
@property (nonatomic, strong) NSString * color;

-initWithWithName:(NSString *) inName andColor:(NSString *) inColor andShape:(NSString *) inShape;

-(NSString *) description;

@end
