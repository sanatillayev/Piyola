//
//  File.swift
//  
//
//  Created by Asilbek Isakov on 1/7/24.
//

import UIKit

public extension UICollectionView {
    
    func register(_ cellClass: AnyClass) {
        register(cellClass, forCellWithReuseIdentifier: "\(cellClass)")
    }
    
    func register(cellClasses: [AnyClass]) {
        cellClasses.forEach { cellClass in
            register(cellClass, forCellWithReuseIdentifier: "\(cellClass)")
        }
    }
    
    func register(cellControllers: [CollectionCellController]) {
        var identifiers = Set<String>()
        let classes = cellControllers
            .filter {
                let identifier = $0.identifier
                let shouldKeep = !identifiers.contains(identifier)
                if shouldKeep { identifiers.insert(identifier) }
                return shouldKeep
            }
            .map { $0.cellType }
        register(cellClasses: classes)
    }
    
    func dequeue(with cellClass: AnyClass, for indexPath: IndexPath) -> UICollectionViewCell {
        dequeueReusableCell(withReuseIdentifier: "\(cellClass)", for: indexPath)
    }
    
    func registerHeader(_ headerClass: AnyClass) {
        register(headerClass,
                 forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                 withReuseIdentifier: "\(headerClass)")
    }
    
    func dequeueHeader(with headerClass: AnyClass, for indexPath: IndexPath) -> UICollectionReusableView {
        dequeueReusableSupplementaryView(
            ofKind: UICollectionView.elementKindSectionHeader,
            withReuseIdentifier: "\(headerClass)",
            for: indexPath)
    }
    
    func registerFooter(_ footerClass: AnyClass) {
        register(footerClass,
                 forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter,
                 withReuseIdentifier: "\(footerClass)")
    }
    
    func dequeueFooter(with headerClass: AnyClass, for indexPath: IndexPath) -> UICollectionReusableView {
        dequeueReusableSupplementaryView(
            ofKind: UICollectionView.elementKindSectionFooter,
            withReuseIdentifier: "\(headerClass)",
            for: indexPath)
    }
}
