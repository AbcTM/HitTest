//
//  ViewController.swift
//  zz
//
//  Created by tlc on 2018/3/23.
//  Copyright © 2018年 tlc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bottomView: BottomView!
    @IBOutlet weak var topView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let tapGes = UITapGestureRecognizer.init(target: self, action: #selector(ViewController.tapGesAction(_:)))
        tapGes.numberOfTapsRequired = 1
        bottomView.addGestureRecognizer(tapGes)

        let tapGes1 = UITapGestureRecognizer.init(target: self, action: #selector(ViewController.tapGesAction(_:)))
        tapGes1.numberOfTapsRequired = 1
        topView.addGestureRecognizer(tapGes1)
        
        
        // 有时候有个需求下面的view需要添加圆角
        bottomView.layer.cornerRadius = 8
        //bottomView.layer.masksToBounds = true// 错误做法,这样会切掉超出的
    }
    
    @objc func tapGesAction(_ ges: UITapGestureRecognizer) {
        guard let tapView = ges.view else {
            return
        }
        
        if tapView == topView {
            print("点击的是 topView")
        }
        else {
            print("点击的是 bottomView")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

