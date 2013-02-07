//
//  ViewController.m
//  FruitCart
//
//  Created by David Evans on 1/29/13.
//  Copyright (c) 2013 DavidEvans. All rights reserved.
//

#import "ViewController.h"
#import "Fruit.h"
#import "Vegetables.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _cart = [NSMutableArray arrayWithCapacity:0];
    
    NSString * vegetableName = [NSString stringWithFormat:@"Potato"];
    Vegetables * anonVegetable = [[Vegetables alloc] initWithWithName:vegetableName andColor:@"Brown" andShape:@"Round"];
    [_cart addObject:anonVegetable];
    NSString * vegetableName2 = [NSString stringWithFormat:@"Onion"];
    Vegetables * anonVegetable2 = [[Vegetables alloc] initWithWithName:vegetableName2 andColor:@"Purple" andShape:@"Round"];
    [_cart addObject:anonVegetable2];
    NSString * vegetableName3 = [NSString stringWithFormat:@"Pumpkin"];
    Vegetables * anonVegetable3 = [[Vegetables alloc] initWithWithName:vegetableName3 andColor:@"Orange" andShape:@"Round"];
    [_cart addObject:anonVegetable3];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(int) numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSString *) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"Fruit";
}

-(int) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_cart count];
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"TableViewCell"];
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"TableViewCell"];
    }
    
    Fruit * tempFruit = [_cart objectAtIndex:indexPath.row];
    
    cell.textLabel.text = [tempFruit name];
    cell.detailTextLabel.text = [tempFruit color];
    return cell;
}

@end
