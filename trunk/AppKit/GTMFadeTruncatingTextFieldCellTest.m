//  GTMFadeTruncatingTextFieldCellTest.m
//
//  Copyright 2009 Google Inc.
//
//  Licensed under the Apache License, Version 2.0 (the "License"); you may not
//  use this file except in compliance with the License.  You may obtain a copy
//  of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
//  WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the
//  License for the specific language governing permissions and limitations under
//  the License.
//

#import "GTMSenTestCase.h"
#import "GTMAppKit+UnitTesting.h"
#import "GTMFadeTruncatingTextFieldCell.h"

@interface GTMFadeTruncatingTextFieldCellTest : GTMTestCase
@end

@implementation GTMFadeTruncatingTextFieldCellTest

- (void)testFadeCell {
  NSTextField *field = [[[NSTextField alloc] initWithFrame:
                         NSMakeRect(0, 0, 100, 16)] autorelease];
  [field setCell:[[[GTMFadeTruncatingTextFieldCell alloc] initTextCell:@""]
                  autorelease]];
  [field setStringValue:@"A very long string that won't fit"];
  GTMAssertObjectImageEqualToImageNamed(field,
                                        @"GTMFadeTruncatingTextFieldCellTest1",
                                        nil);
  [field setStringValue:@"A short string"];
  GTMAssertObjectImageEqualToImageNamed(field,
                                        @"GTMFadeTruncatingTextFieldCellTest2",
                                        nil);
}

@end