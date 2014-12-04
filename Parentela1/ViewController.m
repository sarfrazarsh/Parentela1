//
//  ViewController.m
//  Parentela1
//
//  Created by Mohammad Sarfraz Arshad on 26/11/2014.
//  Copyright (c) 2014 enecon. All rights reserved.
//

#import "ViewController.h"
#import "TableViewController.h"

@interface ViewController ()

@end

@implementation ViewController
NSArray *_subViewControllers;
UIViewController *_selectedViewController;
UIView *_containerView;
UIView *View1;
UIView *View2;
CGFloat hight_b;
CGFloat width_b;
UIButton*B1;
UIButton*B2;
UIButton*B3;
UIButton*B4;
UIButton*B5;



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)btn1Selected{
    UIViewController *newSubViewController = [_subViewControllers objectAtIndex:0];
    [self transitionFromViewController:_selectedViewController toViewController:newSubViewController];
    _selectedViewController=newSubViewController;
    
}

-(void)btn2Selected{
    UIViewController *newSubViewController = [_subViewControllers objectAtIndex:1];
    [self transitionFromViewController:_selectedViewController toViewController:newSubViewController];
    _selectedViewController=newSubViewController;
    
}

-(void)btn3Selected{
    UIViewController *newSubViewController = [_subViewControllers objectAtIndex:2];
    [self transitionFromViewController:_selectedViewController toViewController:newSubViewController];
    _selectedViewController=newSubViewController;
    
}
-(void)btn4Selected{
    UIViewController *newSubViewController = [_subViewControllers objectAtIndex:3];
    [self transitionFromViewController:_selectedViewController toViewController:newSubViewController];
    _selectedViewController=newSubViewController;
    
}
-(void)btn5Selected{
    UIViewController *newSubViewController = [_subViewControllers objectAtIndex:4];
    [self transitionFromViewController:_selectedViewController toViewController:newSubViewController];
    _selectedViewController=newSubViewController;
    
}

- (void)loadView
{
    [super loadView];
    // set up the  view
    CGRect frame = [[UIScreen mainScreen] applicationFrame];
    hight_b=((frame.size.width/5)/64)*57;
    width_b=frame.size.width/5;
    CGRect titleRect1 = CGRectMake(0, 0,frame.size.width, 19);
    View2 = [[UIView alloc] initWithFrame:titleRect1];
    View2.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    View2.backgroundColor = [UIColor colorWithRed:22/255.0f green:160/255.0f blue:133/255.0f alpha:1.0f];
    [self.view addSubview:View2];
    
   CGRect Button= CGRectMake(0,19, frame.size.width/5, ((frame.size.width/5)/64)*57);
    B1=[[UIButton alloc] initWithFrame:Button];
    B1.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
    [B1 setImage:[UIImage imageNamed:@"Image.png"]  forState:UIControlStateNormal];
    [B1 addTarget:self action:@selector(btn1Selected) forControlEvents:UIControlEventTouchUpInside];
    B1.contentHorizontalAlignment = UIControlContentHorizontalAlignmentFill;
    B1.contentVerticalAlignment = UIControlContentVerticalAlignmentFill;

    [self.view addSubview:B1];
    
    CGRect Button1= CGRectMake(width_b,19, frame.size.width/5, ((frame.size.width/5)/64)*57);
    B2=[[UIButton alloc] initWithFrame:Button1];
    B2.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        [B2 setImage:[UIImage imageNamed:@"Image-1.png"]  forState:UIControlStateNormal];
    B2.contentHorizontalAlignment = UIControlContentHorizontalAlignmentFill;
    [B2 addTarget:self action:@selector(btn2Selected) forControlEvents:UIControlEventTouchUpInside];
    B2.contentVerticalAlignment = UIControlContentVerticalAlignmentFill;


    [self.view addSubview:B2];
    
    CGRect Button3= CGRectMake(width_b*2,19, frame.size.width/5, ((frame.size.width/5)/64)*57);
    B3=[[UIButton alloc] initWithFrame:Button3];
    B3.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [B3 setImage:[UIImage imageNamed:@"Image-2.png"]  forState:UIControlStateNormal];
    B3.contentHorizontalAlignment = UIControlContentHorizontalAlignmentFill;
    [B3 addTarget:self action:@selector(btn3Selected) forControlEvents:UIControlEventTouchUpInside];
    B3.contentVerticalAlignment = UIControlContentVerticalAlignmentFill;
    [self.view addSubview:B3];
    
    CGRect Button4= CGRectMake(width_b*3,19, frame.size.width/5, ((frame.size.width/5)/64)*57);
    B4=[[UIButton alloc] initWithFrame:Button4];
    B4.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [B4 setImage:[UIImage imageNamed:@"Image-3.png"]  forState:UIControlStateNormal];
    B4.contentHorizontalAlignment = UIControlContentHorizontalAlignmentFill;
    B4.contentVerticalAlignment = UIControlContentVerticalAlignmentFill;
    [B4 addTarget:self action:@selector(btn4Selected) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:B4];
    
    CGRect Button5= CGRectMake(width_b*4,19, frame.size.width/5, ((frame.size.width/5)/64)*57);
    B5=[[UIButton alloc] initWithFrame:Button5];
    B5.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [B5 setImage:[UIImage imageNamed:@"Image-4.png"]  forState:UIControlStateNormal];
    B5.contentHorizontalAlignment = UIControlContentHorizontalAlignmentFill;
    [B5 addTarget:self action:@selector(btn5Selected) forControlEvents:UIControlEventTouchUpInside];
    B5.contentVerticalAlignment = UIControlContentVerticalAlignmentFill;
    [self.view addSubview:B5];
    
    CGRect frame1 = CGRectMake(0,hight_b+19,frame.size.width,frame.size.height-hight_b-12);
     _containerView = [[UIView alloc] initWithFrame:frame1];
     _containerView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
     [self.view addSubview:_containerView];
    
    NSMutableArray *tmpArray = [NSMutableArray array];
    NSArray *tmpArray1=[NSArray arrayWithObjects: @"Home",@"Topics",@"Search", @"Profile",@"Notification",nil];
    
    for (int i=0; i<5; i++)
    {
        TableViewController *table = [[TableViewController alloc] init];
        table.Lable=tmpArray1[i];
        [tmpArray addObject:table];
        
    }
    _subViewControllers=tmpArray;
    
    _selectedViewController = [_subViewControllers objectAtIndex:0];
    
    CGRect titleRect = CGRectMake(0, hight_b+15, width_b, 4);
    View1 = [[UIView alloc] initWithFrame:titleRect];
    View1.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    View1.backgroundColor = [UIColor colorWithRed:.988 green:.808 blue:0 alpha:1];
    [self.view addSubview:View1];
    
    UISwipeGestureRecognizer *swipeLeft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeLeft:)];
    swipeLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.view addGestureRecognizer:swipeLeft];
    
    UISwipeGestureRecognizer *swipeRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeRight:)];
    swipeRight.direction = UISwipeGestureRecognizerDirectionRight;
   
    [self.view addGestureRecognizer:swipeRight];
     self.view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
}



- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    if (_selectedViewController.parentViewController == self)
    {
        // nowthing to do
        return;
    }
    
    // adjust the frame to fit in the container view
    _selectedViewController.view.frame = _containerView.bounds;
    
    // make sure that it resizes on rotation automatically
    _selectedViewController.view.autoresizingMask = _containerView.autoresizingMask;
    
    // add as child VC
    [self addChildViewController:_selectedViewController];
    
    // add it to container view, calls willMoveToParentViewController for us
    [_containerView addSubview:_selectedViewController.view];
    
    // notify it that move is done
    [_selectedViewController didMoveToParentViewController:self];
}


- (void)swipeLeft:(UISwipeGestureRecognizer *)gesture
{
    if (gesture.state == UIGestureRecognizerStateRecognized)
    {
        NSInteger index = [_subViewControllers indexOfObject:_selectedViewController];
        index = MIN(index+1, [_subViewControllers count]-1);
        
       
        UIViewController *newSubViewController = [_subViewControllers objectAtIndex:index];
        
        [self transitionFromViewController:_selectedViewController toViewController:newSubViewController];
        
        _selectedViewController=newSubViewController;
    }
}

- (void)swipeRight:(UISwipeGestureRecognizer *)gesture
{
    if (gesture.state == UIGestureRecognizerStateRecognized)
    {
        NSInteger index = [_subViewControllers indexOfObject:_selectedViewController];
        index = MAX(index-1, 0);
       
        
        UIViewController *newSubViewController = [_subViewControllers objectAtIndex:index];
        
        [self transitionFromViewController:_selectedViewController toViewController:newSubViewController];
        _selectedViewController=newSubViewController;
        
    }
}

- (void)transitionFromViewController:(UIViewController *)fromViewController toViewController:(UIViewController *)toViewController
{
    if (fromViewController == toViewController)
    {
        // cannot transition to same
        return;
    }
    
    CGFloat width = self.view.frame.size.width;
    CGFloat height = self.view.frame.size.height-57;
    NSUInteger i=[_subViewControllers indexOfObject:toViewController];
    
    
    
    if([_subViewControllers indexOfObject:toViewController]>[_subViewControllers indexOfObject:fromViewController]){
    
    // animation setup
    toViewController.view.frame = CGRectMake(width, 0, width, height);
    toViewController.view.autoresizingMask = _containerView.autoresizingMask;
    
    // notify
    [fromViewController willMoveToParentViewController:nil];
    [self addChildViewController:toViewController];
    
    // transition
    

    [self transitionFromViewController:fromViewController
                      toViewController:toViewController
                              duration:.1
                               options:UIViewAnimationOptionTransitionNone
                            animations:^(void) {
                                
                                fromViewController.view.frame = CGRectMake(- width, 0, width, height);
                                toViewController.view.frame = CGRectMake(0, 0, width, height);
                                View1.frame=CGRectMake(i*width_b, hight_b+15, width_b, 4);
                               
                            }
                            completion:^(BOOL finished) {
                                [toViewController didMoveToParentViewController:self];
                                [fromViewController removeFromParentViewController];
                            }];
    }
    else if ([_subViewControllers indexOfObject:toViewController]<[_subViewControllers indexOfObject:fromViewController]){
        
        
        // animation setup
        toViewController.view.frame = CGRectMake(-width, 0, width, height);
        toViewController.view.autoresizingMask = _containerView.autoresizingMask;
        
        // notify
        [fromViewController willMoveToParentViewController:nil];
        [self addChildViewController:toViewController];
        
        // transition
        
        
        [self transitionFromViewController:fromViewController
                          toViewController:toViewController
                                  duration:.1
                                   options:UIViewAnimationOptionCurveEaseInOut
                                animations:^(void) {
                                    
                                    fromViewController.view.frame = CGRectMake(width, 0, width, height);
                                    toViewController.view.frame = CGRectMake(0, 0, width, height);
                                    View1.frame=CGRectMake(i*width_b, hight_b+15, width_b, 4);
                                }
                                completion:^(BOOL finished) {
                                    [toViewController didMoveToParentViewController:self];
                                    [fromViewController removeFromParentViewController];
                                }];
    }
    
}



@end
