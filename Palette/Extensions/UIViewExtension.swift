//
//  UIViewExtension.swift
//  InstagramProgramatically
//
//  Created by Trevor Adcock on 6/19/18.
//  Copyright © 2018 Jayden Garrick. All rights reserved.
//

import UIKit

extension UIView {
    func anchor (top: NSLayoutYAxisAnchor?, bottom: NSLayoutYAxisAnchor?, leading: NSLayoutXAxisAnchor?, trailing: NSLayoutXAxisAnchor?, paddingTop: CGFloat, paddingBottom: CGFloat, paddingLeft: CGFloat, paddingRight: CGFloat, width: CGFloat? = nil, height: CGFloat? = nil){
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top{
            topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        
        if let leading = leading {
            leadingAnchor.constraint(equalTo: leading, constant: paddingLeft).isActive = true
        }
        
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: paddingBottom).isActive = true
        }
        
        if let trailing = trailing{
            trailingAnchor.constraint(equalTo: trailing, constant: -paddingRight).isActive = true
        }
        
        if let width = width {
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        
        if let height = height {
            heightAnchor.constraint(equalToConstant: height).isActive = true
        }
    }
}

extension UIView {
    func roundCorners(cornerRadius: CGFloat, corners: CACornerMask) {
        self.clipsToBounds = true
        self.layer.cornerRadius = cornerRadius
        self.layer.maskedCorners = corners
    }
}

struct SpacingConstants {
    static let verticalObjectBuffer: CGFloat = 8.0
    static let outerHorizontalPadding: CGFloat = 16.0
    static let oneLineElementHight: CGFloat = 24.0
}