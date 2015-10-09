//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___FILEBASENAME___.h"
//#import "CustomCell.h"

@interface ___FILEBASENAMEASIDENTIFIER___ () <UITableViewDataSource, UITableViewDelegate> {
    IBOutlet UITableView *_tableView;
    NSMutableArray       *_tableArray;
}
@end


@implementation ___FILEBASENAMEASIDENTIFIER___


// +---------------------------------------------------------------------------+
#pragma mark - View lifecycle
// +---------------------------------------------------------------------------+


- (void)viewDidLoad {
    [super viewDidLoad];

    _tableArray = @["a", @"b", @"c"];
    [self initTable];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}


// +---------------------------------------------------------------------------+
#pragma mark - UITableview
// +---------------------------------------------------------------------------+


- (void) initTable {
    _tableView.delegate   = self;
    _tableView.dataSource = self;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _tableArray.count;
}

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 50;
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString * cellId = @"kCell";

    <#customcell#> *cell = (<#customcell#> *)[tableView dequeueReusableCellWithIdentifier:cellId];
    if ( !cell ) cell = [[<#customcell#> alloc] init];

    cell.backgroundColor = [UIColor clearColor];

    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}


@end

