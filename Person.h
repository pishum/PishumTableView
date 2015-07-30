//
//  Person.h
//  PishumTableView
//
//  Created by Pishum on 15/7/30.
//  Copyright (c) 2015年 Pishum. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic,copy)NSString *personName;
@property (nonatomic,copy)NSString *personDescribe;
@property (nonatomic,copy)NSString *personIcon;

+(Person*)initPersoneWithName:(NSString*)name Describe:(NSString*)describe Icon:(NSString*)icon;
@end
