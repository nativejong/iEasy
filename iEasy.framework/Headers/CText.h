//
//  CText.h
//  iEasy
//
//  Created by John Blaine on 10/6/20.
//  Copyright © 2020 John Blaine. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CText : UIView<UITextFieldDelegate>

@property (nonatomic, retain) UITextField *title;
@property (nonatomic, retain) UITextField *txt;
@property (nonatomic, retain) UITextField *error;
@property (nonatomic, retain) UIImageView *photo;


- (id)initWithFrame:(CGRect)frame name:(NSString*)n;
- (id)initWithFrame:(CGRect)frame name:(NSString*)n photo:(UIImage*)p;


- (void)watchAction:(void(^)(NSString *nm, NSString *s, void(^setError)(NSString *errorMsg, UIColor *c, Boolean t) ))ex;

@property (copy, nonatomic) void (^errorCB)(NSString *nm, NSString *s, void(^setError)(NSString *errorMsg, UIColor *c, Boolean t) );

@end

NS_ASSUME_NONNULL_END
