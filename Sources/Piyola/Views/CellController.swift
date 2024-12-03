//
//  CellController.swift
//  User
//
//  Created by Asilbek Isakov on 02/01/24.
//

import UIKit

open class CellController: NSObject {

    open var didTap: (() -> Void)?

    open var identifier: String {
        "\(cellType)"
    }

    open var cellType: AnyClass {
        UITableViewCell.self
    }

    open func configure(_ cell: UITableViewCell) {}
    
    open func reload() {}
}
