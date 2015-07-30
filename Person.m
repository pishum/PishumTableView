//
//  Person.m
//  PishumTableView
//
//  Created by Pishum on 15/7/30.
//  Copyright (c) 2015年 Pishum. All rights reserved.
//

#import "Person.h"

@implementation Person
+(Person*)initPersoneWithName:(NSString*)name Describe:(NSString*)describe Icon:(NSString*)icon{
    Person *person = [[Person alloc]init];
    
    person.personName = name;
    person.personDescribe = describe;
    person.personIcon = icon;
    return person;
}
@end
