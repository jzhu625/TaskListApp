//
//  QCCustomCell.m
//  SuperTaskList
//
//  Created by QL Mac Lab on 6/18/13.
//  Copyright (c) 2013 self.edu. All rights reserved.
//

#import "QCCustomCell.h"

@implementation QCCustomCell


@synthesize checkBoxButton;


- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:@"checkboxCell"];
    if (self) {
        // Initialization code
    }
    checked = NO;
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}




    
//   // UIButton *checkBox; and BOOL checkBoxSelected;
//    //_checkBox = [[UIButton alloc] initWithFrame:CGRectMake(x,y,20,20)
//                // 20x20 is the size of the checckbox that you want
//                // create 2 images sizes 20x20 , one empty square and
//                // another of the same square with the checkmark in it
//                // Create 2 UIImages with these new images, then:
//                
//                //[checkboxButton setBackgroundImage:[UIImage imageNamed:@"checkboxblank.jpeg"]
//                                    forState:UIControlStateNormal];
//                //[checkboxButton setBackgroundImage:[UIImage imageNamed:@"checkboxchecked.jpeg.png"]
//                                    forState:UIControlStateSelected];
//                //[checkboxButton setBackgroundImage:[UIImage imageNamed:@"checkboxchecked.png"]
//                                    forState:UIControlStateHighlighted];
//               checkboxButton.adjustsImageWhenHighlighted=YES;
//                      [checkboxButton addTarget];
//                [self.view addSubview:checkboxButton];
//    
//}
//                      
//-(void)checkboxChecked:(id)sender
//    {
//        checkboxChecked= !checkboxSelected;
//        [checkbox setSelected:checkboxSelected];
//    }
    
 
    

                      
- (IBAction)checkBoxButton:(id)sender {
    NSLog(@"checkBox is called");
    if (!checked) {
        NSLog(@"checkbox has been pressed and is not checked");
        [checkBoxButton setImage: [UIImage imageNamed:@"checkboxchecked.jpeg"] forState:UIControlStateNormal];
        NSLog(@"checked image was set");
         checked = YES;
    
        
         }
    else if (checked) {
        NSLog(@"checkbox has been pressed and is checked");
                [checkBoxButton setImage: [UIImage imageNamed:@"checkboxblank.jpeg"] forState:UIControlStateNormal];

        NSLog(@"blank image was set");
        checked = NO;
        
    }   
}

@end
