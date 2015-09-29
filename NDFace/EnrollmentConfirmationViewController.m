//
//  EnrollmentConfirmationViewController.m
//  NDFace
//
//  Created by Matt Willmore on 5/12/15.
//  Copyright (c) 2015 Architecture Information Technology Team. All rights reserved.
//

#import "EnrollmentConfirmationViewController.h"

@interface EnrollmentConfirmationViewController ()

@end

@implementation EnrollmentConfirmationViewController



- (void) viewDidLoad
	{
		[super viewDidLoad];

		NSLog (@" ");
		NSLog (@"ECVC: viewDidLoad");
		NSLog (@" ");
            NSLog(@"messageField is %@",self.enrollmentConfirmationLabel);
        if ((self.enrollmentConfirmationLabel != nil) && (self.storedMessage != nil)) {
            [self.enrollmentConfirmationLabel setText:self.storedMessage];
        }

//		[EnrollmentConfirmationLabel setText:@"Something happened."];
		
		// Do any additional setup after loading the view.
		
//		[self setMessageField: @"this is a test"]; // writes to the label
		// [self setMessageField: ]; TODO 7-28-15

	}	// End:  viewDidLoad



- (void) didReceiveMemoryWarning
	{
		[super didReceiveMemoryWarning];
		// Dispose of any resources that can be recreated.

	}	// End:  didReceiveMemoryWarning


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void) prepareForSegue: (UIStoryboardSegue *) segue sender: (id) sender
	{
		NSLog (@" ");
		NSLog (@"entering prepareForSegue in ECVC");
		NSLog (@" ");
        NSLog(@"messageField is %@",self.enrollmentConfirmationLabel);

		// Get the new view controller using [segue destinationViewController].
		// Pass the selected object to the new view controller.

	}	// End:  prepareForSegue


-(void) setMessageField: (NSString *) theMessage
	{
		NSLog (@" ");
		NSLog (@"*** setMessageField Called *** with text of:  >%@<", theMessage);
		NSLog (@" ");
        NSLog(@"messageField is %@",self.enrollmentConfirmationLabel);

		if (self.enrollmentConfirmationLabel != nil)
            [self.enrollmentConfirmationLabel setText: theMessage];
        else
            self.storedMessage = [theMessage copy];

	}	// End:  prepareForSegue

@end
