//
//  ViewController.m
//  TicTacToe
//
//  Created by Quinn Harney on 5/14/15.
//  Copyright (c) 2015 Quinn Harney. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //testing git push
    // Do any additional setup after loading the view, typically from a nib.

}

-(void)findLabelUsingPoint:(CGPoint)point{

    NSInteger labelClickedFlag = 0;
    if (CGRectContainsPoint(self.labelOne.frame, point)) {


        if ([self.labelOne.text isEqualToString:@"Label"]) {

            labelClickedFlag = 1;

            self.labelOne.text = self.whichPlayerLabel.text;
            self.labelOne.textColor = ([self.whichPlayerLabel.text isEqualToString:@"X"]) ? [UIColor blueColor] : [UIColor redColor];

        }

    } else  if (CGRectContainsPoint(self.labelTwo.frame, point)) {

        if ([self.labelTwo.text isEqualToString:@"Label"]) {

            labelClickedFlag = 1;

            self.labelTwo.text = self.whichPlayerLabel.text;
            self.labelTwo.textColor = ([self.whichPlayerLabel.text isEqualToString:@"X"]) ? [UIColor blueColor] : [UIColor redColor];
            
        }

    } else if (CGRectContainsPoint(self.labelThree.frame, point)) {

        if ([self.labelThree.text isEqualToString:@"Label"]) {

            labelClickedFlag = 1;

            self.labelThree.text = self.whichPlayerLabel.text;
            self.labelThree.textColor = ([self.whichPlayerLabel.text isEqualToString:@"X"]) ? [UIColor blueColor] : [UIColor redColor];
            
        }


    } else if (CGRectContainsPoint(self.labelFour.frame, point)) {

        if ([self.labelFour.text isEqualToString:@"Label"]) {

            labelClickedFlag = 1;



            self.labelFour.text = self.whichPlayerLabel.text;
            self.labelFour.textColor = ([self.whichPlayerLabel.text isEqualToString:@"X"]) ? [UIColor blueColor] : [UIColor redColor];
            
        }


    } else if (CGRectContainsPoint(self.labelFive.frame, point)) {

        if ([self.labelFive.text isEqualToString:@"Label"]) {

            labelClickedFlag = 1;

            self.labelFive.text = self.whichPlayerLabel.text;
            self.labelFive.textColor = ([self.whichPlayerLabel.text isEqualToString:@"X"]) ? [UIColor blueColor] : [UIColor redColor];
            
        }


    } else if (CGRectContainsPoint(self.labelSix.frame, point)) {

        if ([self.labelSix.text isEqualToString:@"Label"]) {

            labelClickedFlag = 1;

            self.labelSix.text = self.whichPlayerLabel.text;
            self.labelSix.textColor = ([self.whichPlayerLabel.text isEqualToString:@"X"]) ? [UIColor blueColor] : [UIColor redColor];
            
        }


    } else if (CGRectContainsPoint(self.labelSeven.frame, point)) {

        if ([self.labelSeven.text isEqualToString:@"Label"]) {

            labelClickedFlag = 1;

            self.labelSeven.text = self.whichPlayerLabel.text;
            self.labelSeven.textColor = ([self.whichPlayerLabel.text isEqualToString:@"X"]) ? [UIColor blueColor] : [UIColor redColor];
            
        }


    } else if (CGRectContainsPoint(self.labelEight.frame, point)) {

        if ([self.labelEight.text isEqualToString:@"Label"]) {

            labelClickedFlag = 1;

            self.labelEight.text = self.whichPlayerLabel.text;
            self.labelEight.textColor = ([self.whichPlayerLabel.text isEqualToString:@"X"]) ? [UIColor blueColor] : [UIColor redColor];
            
        }


    } else if (CGRectContainsPoint(self.labelNine.frame, point)) {

        if ([self.labelNine.text isEqualToString:@"Label"]) {

            labelClickedFlag = 1;

            self.labelNine.text = self.whichPlayerLabel.text;
            self.labelNine.textColor = ([self.whichPlayerLabel.text isEqualToString:@"X"]) ? [UIColor blueColor] : [UIColor redColor];
            
        }


    } else  if (CGRectContainsPoint(self.whichPlayerLabel.frame, point)) {

    }

    if (labelClickedFlag == 1) {

        NSString *winner = @"";
        winner = [self whoWon];

        NSLog(@"%@", winner);

        if (![winner isEqualToString:@"No winner"]) {

            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:winner message:@"Would you like to play again?" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Play Again",nil];

            [alert show];
        }


        if ([self.whichPlayerLabel.text isEqualToString:@"X"])  {
            self.whichPlayerLabel.text = @"O";
        }else {

            self.whichPlayerLabel.text = @"X";
        }
    }

}

-(IBAction)onLabelTapped:(UITapGestureRecognizer *)sender{

    CGPoint point = [sender locationInView:self.view];
    [self findLabelUsingPoint:point];
}

-(NSString *)whoWon {
    if ([self.whichPlayerLabel.text isEqualToString:self.labelOne.text] && [self.whichPlayerLabel.text isEqualToString:self.labelTwo.text] && [self.whichPlayerLabel.text isEqualToString:self.labelThree.text]) {
            return [NSString stringWithFormat:@"%@ Won!", self.whichPlayerLabel.text];
    } else  if ([self.whichPlayerLabel.text isEqualToString:self.labelFour.text] && [self.whichPlayerLabel.text isEqualToString:self.labelFive.text] && [self.whichPlayerLabel.text isEqualToString:self.labelSix.text]) {
                return [NSString stringWithFormat:@"%@ Won!", self.whichPlayerLabel.text];
    } else  if ([self.whichPlayerLabel.text isEqualToString:self.labelSeven.text] && [self.whichPlayerLabel.text isEqualToString:self.labelEight.text] && [self.whichPlayerLabel.text isEqualToString:self.labelNine.text]) {
                return [NSString stringWithFormat:@"%@ Won!", self.whichPlayerLabel.text];
    } else if ([self.whichPlayerLabel.text isEqualToString:self.labelOne.text] && [self.whichPlayerLabel.text isEqualToString:self.labelFour.text] && [self.whichPlayerLabel.text isEqualToString:self.labelSeven.text]) {
                return [NSString stringWithFormat:@"%@ Won!", self.whichPlayerLabel.text];
    } else if ([self.whichPlayerLabel.text isEqualToString:self.labelTwo.text] && [self.whichPlayerLabel.text isEqualToString:self.labelFive.text] && [self.whichPlayerLabel.text isEqualToString:self.labelEight.text]) {
                return [NSString stringWithFormat:@"%@ Won!", self.whichPlayerLabel.text];
    } else if ([self.whichPlayerLabel.text isEqualToString:self.labelThree.text] && [self.whichPlayerLabel.text isEqualToString:self.labelSix
.text] && [self.whichPlayerLabel.text isEqualToString:self.labelNine.text]) {
                return [NSString stringWithFormat:@"%@ Won!", self.whichPlayerLabel.text];
    } else if ([self.whichPlayerLabel.text isEqualToString:self.labelOne.text] && [self.whichPlayerLabel.text isEqualToString:self.labelFive.text] && [self.whichPlayerLabel.text isEqualToString:self.labelNine.text]) {
                return [NSString stringWithFormat:@"%@ Won!", self.whichPlayerLabel.text];
    } else if ([self.whichPlayerLabel.text isEqualToString:self.labelThree.text] && [self.whichPlayerLabel.text isEqualToString:self.labelFive.text] && [self.whichPlayerLabel.text isEqualToString:self.labelSeven.text]) {
                return [NSString stringWithFormat:@"%@ Won!", self.whichPlayerLabel.text];
    }

    return @"No winner";
}
@end
