//
//  MyUILabel.swift
//  CustomUILabel
//
//  Created by Siniša Vuković on 14/12/2017.
//  Copyright © 2017 Tvornica Snova. All rights reserved.
//

import UIKit
import TTTAttributedLabel

@IBDesignable

class MyUILabel: UIView {
    
    var label: TTTAttributedLabel!
    var bubble: Bubble!
    
    private var bubbleColor:UIColor = UIColor.lightGray
    private var txtColor:UIColor = UIColor.white
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.backgroundColor = UIColor.clear
        
        label = TTTAttributedLabel(frame: self.bounds)
        bubble = Bubble(frame: self.bounds)
        
        addBubble()
        addLabel()
    }
    
    func addBubble () {
        bubble.bubbleColor = self.bubbleColor
        self.addSubview(bubble)
        self.bringSubview(toFront: bubble)
    }
    
    func addLabel() {
        label.textColor = self.txtColor
        label.textAlignment = .center
        label.text = "Some custom text"
        label.backgroundColor = UIColor.clear
        self.addSubview(label)
        self.bringSubview(toFront: label)
    }
    
    func set(text: String) {
        label.text = text
    }
}

class Bubble: UIView {
    
    var path: UIBezierPath!
    var bubbleColor:UIColor = UIColor.lightGray
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    override func draw(_ rect: CGRect) {
        self.createBubbledLabel(frame: self.bounds, resizing: .aspectFit)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.backgroundColor = UIColor.clear
    }

    
    func createBubbledLabel(frame targetFrame: CGRect, resizing: ResizingBehavior) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 325, height: 60), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 325, y: resizedFrame.height / 60)
        
        
        //// Color Declarations
        let color = bubbleColor
        
        //// Rectangle Drawing
        let rectanglePath = UIBezierPath()
        rectanglePath.move(to: CGPoint(x: 39.37, y: 0))
        rectanglePath.addLine(to: CGPoint(x: 283.43, y: 0))
        rectanglePath.addCurve(to: CGPoint(x: 294.46, y: 1.96), controlPoint1: CGPoint(x: 281.91, y: 0), controlPoint2: CGPoint(x: 288.51, y: 0))
        rectanglePath.addLine(to: CGPoint(x: 295.62, y: 2.25))
        rectanglePath.addCurve(to: CGPoint(x: 314, y: 28.5), controlPoint1: CGPoint(x: 306.65, y: 6.26), controlPoint2: CGPoint(x: 314, y: 16.76))
        rectanglePath.addCurve(to: CGPoint(x: 314, y: 30), controlPoint1: CGPoint(x: 314, y: 30), controlPoint2: CGPoint(x: 314, y: 30))
        rectanglePath.addLine(to: CGPoint(x: 314, y: 30))
        rectanglePath.addLine(to: CGPoint(x: 314, y: 30))
        rectanglePath.addLine(to: CGPoint(x: 314, y: 31.5))
        rectanglePath.addCurve(to: CGPoint(x: 317, y: 48), controlPoint1: CGPoint(x: 314, y: 34.08), controlPoint2: CGPoint(x: 314.02, y: 42.83))
        rectanglePath.addCurve(to: CGPoint(x: 325, y: 58), controlPoint1: CGPoint(x: 320.25, y: 53.65), controlPoint2: CGPoint(x: 326.44, y: 55.72))
        rectanglePath.addCurve(to: CGPoint(x: 296, y: 50), controlPoint1: CGPoint(x: 321.77, y: 63.13), controlPoint2: CGPoint(x: 302, y: 49))
        rectanglePath.addCurve(to: CGPoint(x: 268.7, y: 60), controlPoint1: CGPoint(x: 288, y: 46), controlPoint2: CGPoint(x: 281.91, y: 60))
        rectanglePath.addLine(to: CGPoint(x: 30.57, y: 60))
        rectanglePath.addCurve(to: CGPoint(x: 19.54, y: 58.04), controlPoint1: CGPoint(x: 32.09, y: 60), controlPoint2: CGPoint(x: 25.49, y: 60))
        rectanglePath.addLine(to: CGPoint(x: 18.38, y: 57.75))
        rectanglePath.addCurve(to: CGPoint(x: -0, y: 31.5), controlPoint1: CGPoint(x: 7.35, y: 53.74), controlPoint2: CGPoint(x: -0, y: 43.24))
        rectanglePath.addCurve(to: CGPoint(x: 0, y: 30), controlPoint1: CGPoint(x: 0, y: 30), controlPoint2: CGPoint(x: 0, y: 30))
        rectanglePath.addLine(to: CGPoint(x: 0, y: 30))
        rectanglePath.addLine(to: CGPoint(x: 0, y: 30))
        rectanglePath.addLine(to: CGPoint(x: -0, y: 28.5))
        rectanglePath.addCurve(to: CGPoint(x: 18.38, y: 2.25), controlPoint1: CGPoint(x: 0, y: 16.76), controlPoint2: CGPoint(x: 7.35, y: 6.26))
        rectanglePath.addCurve(to: CGPoint(x: 45.3, y: 0), controlPoint1: CGPoint(x: 25.49, y: 0), controlPoint2: CGPoint(x: 32.09, y: 0))
        rectanglePath.addLine(to: CGPoint(x: 30.57, y: 0))
        rectanglePath.addLine(to: CGPoint(x: 39.37, y: 0))
        rectanglePath.close()
        color.setFill()
        rectanglePath.fill()
        
        context.restoreGState()
    }
    
    
    
    
    @objc(CustomBubbleUiLabelResizingBehavior)
    public enum ResizingBehavior: Int {
        case aspectFit /// The content is proportionally resized to fit into the target rectangle.
        case aspectFill /// The content is proportionally resized to completely fill the target rectangle.
        case stretch /// The content is stretched to match the entire target rectangle.
        case center /// The content is centered in the target rectangle, but it is NOT resized.
        
        public func apply(rect: CGRect, target: CGRect) -> CGRect {
            if rect == target || target == CGRect.zero {
                return rect
            }
            
            var scales = CGSize.zero
            scales.width = abs(target.width / rect.width)
            scales.height = abs(target.height / rect.height)
            
            switch self {
            case .aspectFit:
                scales.width = min(scales.width, scales.height)
            case .aspectFill:
                scales.width = max(scales.width, scales.height)
                scales.height = scales.width
            case .stretch:
                break
            case .center:
                scales.width = 1
                scales.height = 1
            }
            
            var result = rect.standardized
            result.size.width *= scales.width
            result.size.height *= scales.height
            result.origin.x = target.minX + (target.width - result.width) / 2
            result.origin.y = target.minY + (target.height - result.height) / 2
            return result
        }
    }
}
