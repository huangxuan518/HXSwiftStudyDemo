//
//  HXHomeViewController.swift
//  SwiftDemo
//
//  Created by Love on 16/7/1.
//  Copyright © 2016年 黄轩. All rights reserved.
//

import UIKit

class HXHomeViewController: UIViewController ,UITableViewDelegate, UITableViewDataSource {
    
    var tableView : UITableView?
    var dataSouse : NSArray?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "Swift Study"
        
        self.dataSouse = ["UILabel","UIButton"]
        
        self.tableView = UITableView(frame:self.view!.frame)
        self.tableView!.delegate = self
        self.tableView!.dataSource = self
        self.tableView!.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.view?.addSubview(self.tableView!)
    }
    
    //段
    func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }
    
    //行
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.dataSouse!.count
    }
    
    //cell
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView .dequeueReusableCellWithIdentifier("cell", forIndexPath:indexPath) as UITableViewCell
        let title = self.dataSouse![indexPath.row]
        cell.textLabel!.text = title as? String
        return cell
    }
    
    //高度
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
    {
        return 44
    }
    
    //点击事件方法
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        print("row = %d",indexPath.row)
        if indexPath.row == 0
        {
            let vc = HXUILabelViewController();
            self.navigationController!.pushViewController(vc, animated: true);
        }
        
    }
}
