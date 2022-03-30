//
//  ViewController.swift
//  HeaderAndFooter
//
//  Created by Никита Коголенок on 30.03.22.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - GUI Variable
    private let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        creatDelegate()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        createFrame()
    }
    
    // MARK: - Methods
    func creatDelegate() {
        view.addSubview(collectionView)
        collectionView.register(MyCollectionViewCell.self, forCellWithReuseIdentifier: MyCollectionViewCell.identifier)
        collectionView.register(HeaderCollectionReusableView.self,
                                forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                                withReuseIdentifier: HeaderCollectionReusableView.identifier)
        collectionView.register(FooterCollectionReusableView.self,
                                forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter,
                                withReuseIdentifier: FooterCollectionReusableView.identifier)
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    func createFrame() {
        collectionView.frame = view.bounds
    }
}
