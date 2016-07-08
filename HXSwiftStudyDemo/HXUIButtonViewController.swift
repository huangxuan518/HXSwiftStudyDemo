//
//  HXUIButtonViewController.swift
//  HXSwiftStudyDemo
//
//  Created by 黄轩 on 16/7/8.
//  Copyright © 2016年 黄轩. All rights reserved.
//

import UIKit

class HXUIButtonViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //具体用法见 http://www.hangge.com/blog/cache/detail_529.html
        
        self.title = "UIButton"
        
        //创建一个ContactAdd类型的按钮
        let button:UIButton = UIButton(type:.Custom)
        //设置按钮位置和大小
        button.frame=CGRectMake(50, 150, 200, 30)
        //设置按钮文字
        button.setTitle("按钮", forState:UIControlState.Normal)

        //对于Custom定制类型按钮，代码可简化为：
        //let button = UIButton(frame:CGRectMake(10, 150, 100, 30))
        
        //按钮的文字设置
        button.setTitle("普通状态", forState:UIControlState.Normal) //普通状态下的文字
        button.setTitle("触摸状态", forState:UIControlState.Highlighted) //触摸状态下的文字
        button.setTitle("禁用状态", forState:UIControlState.Disabled) //禁用状态下的文字
        
        //按钮文字颜色的设置
        button.setTitleColor(UIColor.blackColor(),forState: .Normal) //普通状态下文字的颜色
        button.setTitleColor(UIColor.greenColor(),forState: .Highlighted) //触摸状态下文字的颜色
        button.setTitleColor(UIColor.grayColor(),forState: .Disabled) //禁用状态下文字的颜色
        
        //按钮文字阴影颜色的设置
//        button.setTitleShadowColor(UIColor.greenColor(),forState:.Normal) //普通状态下文字阴影的颜色
//        button.setTitleShadowColor(UIColor.yellowColor(),forState:.Highlighted) //普通状态下文字阴影的颜色
//        button.setTitleShadowColor(UIColor.grayColor(),forState:.Disabled) //普通状态下文字阴影的颜色
        
        //按钮背景颜色设置
        button.backgroundColor=UIColor.redColor()
        
        //按钮文字图标的设置
        button.setImage(UIImage(named:"icon1"),forState:.Normal)  //设置图标
        button.adjustsImageWhenHighlighted=false //使触摸模式下按钮也不会变暗
        button.adjustsImageWhenDisabled=false //使禁用模式下按钮也不会变暗
        
        //设置按钮背景图片
        button.setBackgroundImage(UIImage(named:"background1"),forState:.Normal)
        
        //swift版本 如果是 2.2：
        //button.addTarget(self, action: #selector(tapped), forControlEvents:.TouchUpInside)
        //button.addTarget(self,action:#selector(tapped(_:)),forControlEvents:.TouchUpInside)
        //2.2 之前的版本：
        //不传递触摸对象（即点击的按钮）
        button.addTarget(self, action:"tapped", forControlEvents:.TouchUpInside)
        
        //传递触摸对象（即点击的按钮），需要在定义action参数时，方法名称后面带上冒号
        button.addTarget(self,action:"tapped1:",forControlEvents:UIControlEvents.TouchUpInside)

//        常用的触摸事件类型：
//        TouchDown：单点触摸按下事件，点触屏幕
//        TouchDownRepeat：多点触摸按下事件，点触计数大于1，按下第2、3或第4根手指的时候
//        TouchDragInside：触摸在控件内拖动时
//        TouchDragOutside：触摸在控件外拖动时
//        TouchDragEnter：触摸从控件之外拖动到内部时
//        TouchDragExit：触摸从控件内部拖动到外部时
//        TouchUpInside：在控件之内触摸并抬起事件
//        TouchUpOutside：在控件之外触摸抬起事件
//        TouchCancel：触摸取消事件，即一次触摸因为放上太多手指而被取消，或者电话打断

        self.view.addSubview(button);
    }
    
    func tapped(){
        print("tapped")
    }
    
    func tapped1(button:UIButton){
        print(button.titleForState(.Normal))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
