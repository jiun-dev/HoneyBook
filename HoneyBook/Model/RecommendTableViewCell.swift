//
//  RecommendTableViewCell.swift
//  HoneyBook
//
//  Created by shinjiun on 2021/08/12.
//

import UIKit

class RecommendTableViewCell: UITableViewCell {
    static let identifier = "RecommentTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .orange 
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
