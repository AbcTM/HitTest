//
//  IrregularView.swift
//  zz
//
//  Created by tlc on 2018/3/23.
//  Copyright © 2018年 tlc. All rights reserved.
//

import UIKit

class IrregularView: UIView {
    
    var path: UIBezierPath = {
        let path = UIBezierPath()
        path.move(to: CGPoint.init(x: 10, y: 10))
        path.addLine(to: CGPoint.init(x: 60, y: 10))
        path.addLine(to: CGPoint.init(x: 60, y: 60))
        path.addLine(to: CGPoint.init(x: 60, y: 40))
        path.addLine(to: CGPoint.init(x: 30, y: 40))
        path.close()
        return path
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        

        setMask(bezierPath: path)
    }
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    
    
    func contain(_ point: CGPoint) -> Bool {
        return self.path.contains(point)
    }

    // MARK: - ui
    func setMask(bezierPath path: UIBezierPath) {
        let maskLayer = CAShapeLayer()
        maskLayer.path = path.cgPath
        maskLayer.fillColor = UIColor.red.cgColor
        maskLayer.frame = self.bounds
        self.layer.mask = maskLayer
        
        let maskBorderLayer = CAShapeLayer()
        maskBorderLayer.path = path.cgPath
        maskBorderLayer.fillColor = UIColor.clear.cgColor
        maskBorderLayer.strokeColor = UIColor.blue.cgColor
        maskBorderLayer.lineWidth = 5
        self.layer.addSublayer(maskBorderLayer)
    }
}
