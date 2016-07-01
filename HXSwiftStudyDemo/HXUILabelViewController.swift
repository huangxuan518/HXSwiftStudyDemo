//
//  HXUILabelViewController.swift
//  SwiftDemo
//
//  Created by Love on 16/7/1.
//  Copyright © 2016年 黄轩. All rights reserved.
//

import UIKit

class HXUILabelViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "UILabel"
        
        //设置标签x坐标
        let label = UILabel(frame: CGRectMake(10, 70, self.view.frame.size.width - 20, 100))
        
        //文字类容
        label.text = "Hello UILabel"
        
        //字体的设置
        label.font = UIFont(name:"Zapfino", size:20)
        
        //文字颜色的设置
        label.textColor = UIColor.whiteColor()  //白色文字
        
        //文字阴影的设置
        label.shadowColor = UIColor.grayColor()  //灰色阴影
        label.shadowOffset = CGSizeMake(-5,5)  //阴影的偏移量
        
        //对齐方式的设置
        label.textAlignment = NSTextAlignment.Center //文字居中对齐
        
        //文字过长时的省略方式
        label.lineBreakMode = NSLineBreakMode.ByTruncatingTail  //隐藏尾部并显示省略号
        label.lineBreakMode = NSLineBreakMode.ByTruncatingMiddle  //隐藏中间部分并显示省略号
        label.lineBreakMode = NSLineBreakMode.ByTruncatingHead  //隐藏头部并显示省略号
        label.lineBreakMode = NSLineBreakMode.ByClipping  //截去多余部分也不显示省略号
        
        //富文本设置
        let attributeString = NSMutableAttributedString(string:"Hello UILabel") //富文本设置
        attributeString.addAttribute(NSFontAttributeName, value: UIFont(name: "HelveticaNeue-Bold", size: 16)!,
            range: NSMakeRange(0,6)) //从文本0开始6个字符字体HelveticaNeue-Bold,16号
        attributeString.addAttribute(NSForegroundColorAttributeName, value: UIColor.blueColor(),
            range: NSMakeRange(0, 3)) //设置字体颜色
        attributeString.addAttribute(NSBackgroundColorAttributeName, value: UIColor.greenColor(),
            range: NSMakeRange(3,3)) //设置文字背景颜色
        label.attributedText = attributeString
        
        //设置文本高亮
        label.highlighted = false //设置文本高亮
        label.highlightedTextColor = UIColor.greenColor() //设置文本高亮颜色
        
        //使标签可以显示多行文字
        label.numberOfLines = 2  //显示两行文字（默认只显示一行，设为0表示没有行数限制）
        
        //文字大小自适应标签宽度
        label.adjustsFontSizeToFitWidth = true //当文字超出标签宽度时，自动调整文字大小，使其不被截断

        //背景颜色
        label.backgroundColor = UIColor.blackColor() //黑色背景
        
        self.view.addSubview(label)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
