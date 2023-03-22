//
//  UIStackView.swift
//  The News App
//
//  Created by Karim Cordilia on 22/03/2023.
//

import UIKit

extension UIStackView {
    func addArrangedSubviewForAutoLayout(_ vw: UIView) {
        vw.translatesAutoresizingMaskIntoConstraints = false
        self.addArrangedSubview(vw)
    }
}
