////
////  CustomBubbleUiLabel.swift
////  ProjectName
////
////  Created by AuthorName on 14/12/2017.
////  Copyright © 2017 CompanyName. All rights reserved.
////
////  Generated by PaintCode
////  http://www.paintcodeapp.com
////
////  This code was generated by Trial version of PaintCode, therefore cannot be used for commercial purposes.
////
//
//
//
//import UIKit
//
//public class CustomBubbleUiLabel : NSObject {
//
//    //// Drawing Methods
//
//    @objc dynamic public class func drawCanvas1(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 240, height: 120), resizing: ResizingBehavior = .aspectFit) {
//        //// General Declarations
//        let context = UIGraphicsGetCurrentContext()!
//        
//        //// Resize to Target Frame
//        context.saveGState()
//        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 240, height: 120), target: targetFrame)
//        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
//        context.scaleBy(x: resizedFrame.width / 240, y: resizedFrame.height / 120)
//
//
//        //// Color Declarations
//        let color = UIColor(red: 0.923, green: 0.035, blue: 0.035, alpha: 1.000)
//
//        //// Bezier Drawing
//        let bezierPath = UIBezierPath()
//        color.setFill()
//        bezierPath.fill()
//        UIColor.black.setStroke()
//        bezierPath.lineWidth = 1
//        bezierPath.stroke()
//
//
//        //// Bezier 2 Drawing
//        let bezier2Path = UIBezierPath()
//        color.setFill()
//        bezier2Path.fill()
//        UIColor.black.setStroke()
//        bezier2Path.lineWidth = 1
//        bezier2Path.stroke()
//
//
//        //// Bezier 3 Drawing
//        let bezier3Path = UIBezierPath()
//        bezier3Path.move(to: CGPoint(x: 160, y: 62))
//        bezier3Path.addCurve(to: CGPoint(x: 169.5, y: 86.5), controlPoint1: CGPoint(x: 159, y: 78), controlPoint2: CGPoint(x: 169.5, y: 86.5))
//        bezier3Path.addCurve(to: CGPoint(x: 156.5, y: 81.5), controlPoint1: CGPoint(x: 169.5, y: 86.5), controlPoint2: CGPoint(x: 168, y: 89))
//        bezier3Path.addCurve(to: CGPoint(x: 160, y: 62), controlPoint1: CGPoint(x: 145, y: 74), controlPoint2: CGPoint(x: 161, y: 46))
//        bezier3Path.close()
//        color.setFill()
//        bezier3Path.fill()
//
//
//        //// Rectangle Drawing
//        let rectangleRect = CGRect(x: 56, y: 38, width: 106, height: 50)
//        let rectanglePath = UIBezierPath(roundedRect: rectangleRect, cornerRadius: 15)
//        color.setFill()
//        rectanglePath.fill()
//        let rectangleTextContent = "Some Message to preview"
//        let rectangleStyle = NSMutableParagraphStyle()
//        rectangleStyle.alignment = .center
//        let rectangleFontAttributes = [
//            .font: UIFont(name: "HelveticaNeue", size: 12)!,
//            .foregroundColor: UIColor.black,
//            .paragraphStyle: rectangleStyle,
//        ]
//
//        let rectangleTextHeight: CGFloat = rectangleTextContent.boundingRect(with: CGSize(width: rectangleRect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: rectangleFontAttributes, context: nil).height
//        context.saveGState()
//        context.clip(to: rectangleRect)
//        rectangleTextContent.draw(in: CGRect(x: rectangleRect.minX, y: rectangleRect.minY + (rectangleRect.height - rectangleTextHeight) / 2, width: rectangleRect.width, height: rectangleTextHeight), withAttributes: rectangleFontAttributes)
//        context.restoreGState()
//        
//        context.restoreGState()
//
//    }
//
//
//
//
//    @objc(CustomBubbleUiLabelResizingBehavior)
//    public enum ResizingBehavior: Int {
//        case aspectFit /// The content is proportionally resized to fit into the target rectangle.
//        case aspectFill /// The content is proportionally resized to completely fill the target rectangle.
//        case stretch /// The content is stretched to match the entire target rectangle.
//        case center /// The content is centered in the target rectangle, but it is NOT resized.
//
//        public func apply(rect: CGRect, target: CGRect) -> CGRect {
//            if rect == target || target == CGRect.zero {
//                return rect
//            }
//
//            var scales = CGSize.zero
//            scales.width = abs(target.width / rect.width)
//            scales.height = abs(target.height / rect.height)
//
//            switch self {
//                case .aspectFit:
//                    scales.width = min(scales.width, scales.height)
//                    scales.height = scales.width
//                case .aspectFill:
//                    scales.width = max(scales.width, scales.height)
//                    scales.height = scales.width
//                case .stretch:
//                    break
//                case .center:
//                    scales.width = 1
//                    scales.height = 1
//            }
//
//            var result = rect.standardized
//            result.size.width *= scales.width
//            result.size.height *= scales.height
//            result.origin.x = target.minX + (target.width - result.width) / 2
//            result.origin.y = target.minY + (target.height - result.height) / 2
//            return result
//        }
//    }
//}
