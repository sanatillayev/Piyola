//
//  CollectionCellController.swift
//  
//
//  Created by Bilol Sanatillayev on 20/05/24.
//

import UIKit

open class CollectionCellController: NSObject {

    open var didTap: (() -> Void)?

    open var identifier: String {
        "\(cellType)"
    }

    open var cellType: AnyClass {
        UICollectionViewCell.self
    }

    open func configure(_ cell: UICollectionViewCell) {}
    open func reload() {}
}
