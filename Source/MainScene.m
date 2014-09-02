//
//  MainScene.m
//  PROJECTNAME
//
//  Created by Viktor on 10/10/13.
//  Copyright (c) 2013 Apportable. All rights reserved.
//

#import "MainScene.h"

@implementation MainScene {
    CCScrollView *_scrollView;
}

- (void)didLoadFromCCB {

}

- (void)onEnter {
    [super onEnter];
    
    CCNode *scrollContent = [CCBReader load:@"ScrollContent"];
    scrollContent.anchorPoint = ccp(0.5, 0.f);
    scrollContent.position = ccp(_scrollView.contentNode.contentSize.width / 2, 0.f);
    [_scrollView.contentNode addChild:scrollContent];
    
    _scrollView.horizontalScrollEnabled = NO;
}

@end
