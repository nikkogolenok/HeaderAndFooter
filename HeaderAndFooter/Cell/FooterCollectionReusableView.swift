//
//  FooterCollectionReusableView.swift
//  HeaderAndFooter
//
//  Created by Никита Коголенок on 30.03.22.
//

import UIKit

class FooterCollectionReusableView: UICollectionReusableView {
    
    // MARK: - Varible
    static let identifier = "FooterCollectionReusableView"
    
    // MARK: - GUI Varible
    private let footerImageView: UIImageView = {
        let image = UIImageView(image: UIImage(named: "gradient"))
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        return image
    }()

    
    // MARK: - Life Cycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(footerImageView)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        footerImageView.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
