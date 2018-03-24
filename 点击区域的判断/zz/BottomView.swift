//
//  BottomView.swift
//  zz
//
//  Created by tlc on 2018/3/23.
//  Copyright © 2018年 tlc. All rights reserved.
//

import UIKit

class BottomView: UIView {

    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        var hitView = super.hitTest(point, with: event)
        
        for subView in self.subviews {
            let viewPotin = subView.convert(point, from: self)
            
            // 第一种判断方法（推荐）
            if subView.point(inside: viewPotin, with: event) {
                hitView = subView
                break
            }
            
//            //第二种方法
//            if subView.bounds.contains(viewPotin) {
//                hitView = subView
//                break
//            }
        }
        
        return hitView
    }
}
