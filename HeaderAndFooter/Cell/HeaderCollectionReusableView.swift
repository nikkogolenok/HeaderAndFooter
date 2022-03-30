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
    
    // MARK: - GUI Varible
    private let headerImageView: UIImageView = {
        let image = UIImageView(image: UIImage(named: "header"))
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        return image
    }()
    
    // MARK: - Life Cycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(headerImageView)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        headerImageView.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Method
    func configure(with showColor: Bool) {
        if showColor {
            headerImageView.isHidden = true
            backgroundColor = .systemRed
        }
    }
}
