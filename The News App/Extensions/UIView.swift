//
//  UIView.swift
//  The News App
//
//  Created by Karim Cordilia on 22/03/2023.
//

import UIKit

public extension UIView {
    func addSubviewForAutolayout(_ subview: UIView) {
        subview.translatesAutoresizingMaskIntoConstraints = false
        addSubview(subview)
    }
}
