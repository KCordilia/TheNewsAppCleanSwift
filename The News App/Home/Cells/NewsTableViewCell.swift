//
//  NewsTableViewCell.swift
//  The News App
//
//  Created by Karim Cordilia on 22/03/2023.
//

import Foundation
import UIKit

class NewsTableViewCell: UITableViewCell {
    
    let image = UIImageView()
    let titleLabel = UILabel()
    
    let stackView = UIStackView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupComponents()
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func prepareForReuse() {
        titleLabel.text = ""
    }
    
    private func setupComponents() {
        stackView.addArrangedSubviewForAutoLayout(image)
        stackView.addArrangedSubviewForAutoLayout(titleLabel)
        
        addSubviewForAutolayout(stackView)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    
    func setupView(viewModel: NewsData) {
        titleLabel.text = viewModel.title
    }
}
