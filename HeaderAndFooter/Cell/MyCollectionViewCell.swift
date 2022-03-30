//
//  MyCollectionViewCell.swift
//  HeaderAndFooter
//
//  Created by Никита Коголенок on 30.03.22.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Varible
    static let identifier = "MyCollectionViewCell"
    
    // MARK: - Life Cycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .link
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
