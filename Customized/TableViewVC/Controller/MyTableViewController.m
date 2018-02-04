//
//  MyTableViewController.m
//  Customized
//
//  Created by 吴柳燕 on 2018/1/30.
//  Copyright © 2018年 吴柳燕. All rights reserved.
//

#import "MyTableViewController.h"
#import "MyTableViewCell.h"
#import "QuestionModel.h"

@interface MyTableViewController ()
@property (nonatomic, copy) NSArray *modelArray;

@end

@implementation MyTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"风险评估";
    [self loadData];
    [self initTableView];


    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (void)initTableView {
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    //    self.tableView.editing = true;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.allowsSelection = false;
    self.tableView.tableFooterView = ({
        UIView *footView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, 200)];
        footView.backgroundColor = [UIColor whiteColor];
        footView.userInteractionEnabled = YES;
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, ScreenWidth, 150)];
        label.text = @"本人声明：在投资风险测试过程中，本人提供的全部信息、资料是真实、准确、和完整的，测试结果真实、客观地反映了本人的投资风险承受程度。";
        label.lineBreakMode = NSLineBreakByWordWrapping;
        label.numberOfLines = 0;
        [footView addSubview:label];
        UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(50, 150, ScreenWidth - 100, 40)];
        [button setTitle:@"确认本人声明并提交" forState:UIControlStateNormal];
        [button setTintColor:[UIColor whiteColor]];
        [button setBackgroundColor:[UIColor blueColor]];
        [button addTarget:self
                   action:@selector(confirmBtnClick)
         forControlEvents:UIControlEventTouchUpInside];
        button.layer.cornerRadius = 5;
        [footView addSubview:button];
        footView;
    });
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _modelArray.count;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    QuestionModel *model = _modelArray[indexPath.row];
    int count = model.answerArray.count * 50 + 50;
    return count;

}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellId = @"identifier";
    QuestionModel *model = [[QuestionModel alloc]init];
    model = _modelArray[indexPath.row];
    MyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (!cell) {
        cell = [[MyTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
        cell.answerArray = model.answerArray;
        cell.questionLabel.text = model.question;
        [cell initAnswerView];
    }
    return cell;
}

- (void)loadData {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"data" ofType:@"plist"];
    NSArray *dataArray = [NSArray arrayWithContentsOfFile:path];
    _modelArray = [QuestionModel initArrayWithDicArray:dataArray];
}

- (void)confirmBtnClick {
    NSLog(@"confirm");
}


@end
