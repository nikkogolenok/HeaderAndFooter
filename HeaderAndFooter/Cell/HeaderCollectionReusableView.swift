//
//  HeaderCollectionReusableView.swift
//  HeaderAndFooter
//
//  Created by Никита Коголенок on 30.03.22.
//

import UIKit

class HeaderCollectionReusableView: UICollectionReusableView {
    
    // MARK: - Varible
    static let identifier = "HeaderCollectionReusableView"
    
    // MARK: - Life Cycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
