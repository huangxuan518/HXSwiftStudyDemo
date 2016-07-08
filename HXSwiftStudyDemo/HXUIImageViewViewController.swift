//
//  HXUIImageViewViewController.swift
//  HXSwiftStudyDemo
//
//  Created by 黄轩 on 16/7/8.
//  Copyright © 2016年 黄轩. All rights reserved.
//

import UIKit

class HXUIImageViewViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //详细用法 http://www.hangge.com/blog/cache/detail_534.html
        
        let imageView = UIImageView(frame:CGRectMake(50, 100, 200, 100))
        
        //imageView = UIImageView()
        
        //使用图像控件显示图片
        //let imageView=UIImageView(image:UIImage(named:"icon"))
        //imageView.frame=CGRectMake(10,10,100,100)
        
        //从文件目录中获取图片
//        let path = NSBundle.mainBundle().pathForResource("apple", ofType: "png")
//        let newImage = UIImage(contentsOfFile: path!)
//        
//        //从网络地址获取图片
//        //定义NSURL对象
//        let url = NSURL(string: "http://hangge.com/blog/images/logo.png")
//        //从网络获取数据流
//        let data = NSData(contentsOfURL: url!)
//        //通过数据流初始化图片
//        let newImage = UIImage(data: data!)

        //改变图片
        imageView.image = UIImage(named:"icon2")
        
//        //使用图像控件实现动画播放
//        //UIImageView中提供了存储多张图片来创建动画的功能，具体做法是，在animationImages属性中设置一个图片数组，然后使用startAnimating方法开始动画，最后用stopAnimating方法停止动画。同时，使用animationDuration属性中可以设置动画每帧切换的速度（秒）。
//        
//        imageView.frame = CGRectMake(10,10,100,100)
//        //设置动画图片
//        imageView.animationImages = [UIImage(named:"icon")!,UIImage(named:"icon2")!]
//        //设置每隔0.5秒变化一次
//        imageView.animationDuration=0.5
//        
//        imageView.startAnimating()
//        imageView.stopAnimating()
        
        //保持图片比例
        //默认UIImageView会拉伸图片使其占满整个UIImageView，如果不想让图片变形，可以将ContentMode设置为Aspect Fit。
        imageView.contentMode = .ScaleAspectFit
        imageView.backgroundColor = UIColor.redColor()
        
        self.view.addSubview(imageView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
