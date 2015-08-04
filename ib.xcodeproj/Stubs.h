// Generated by IB v0.7.2 gem. Do not edit it manually
// Run `rake ib:open` to refresh

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

@interface AppDelegate: UIResponder <UIApplicationDelegate>
@end

@interface CardExampleViewController: UITableViewController
-(IBAction) initWithStyle:(id) style;
-(IBAction) viewDidLoad;
-(IBAction) numberOfSectionsInTableView:(id) tableView;
-(IBAction) okayNotification:(id) sender;

@end

@interface MasterViewController: UITableViewController
-(IBAction) viewDidLoad;
-(IBAction) numberOfSectionsInTableView:(id) tableView;

@end

@interface CardExampleListCell: MDCCardTableViewCell

@property IBOutlet UIImageView * previewImageView;
@property IBOutlet UILabel * titleLabel;

-(IBAction) initWithFrame:(id) frame;
-(IBAction) layoutSubviews;

@end

@interface CardExampleNotificationCell: MDCCardTableViewCell

@property IBOutlet UILabel * titleLabel;
@property IBOutlet UILabel * descriptionLabel;
@property IBOutlet UIButton * okayButton;

-(IBAction) initWithFrame:(id) frame;
-(IBAction) awakeFromNib;

@end
