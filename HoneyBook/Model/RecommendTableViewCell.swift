//
//  RecommendTableViewCell.swift
//  HoneyBook
//
//  Created by shinjiun on 2021/08/12.
//

import UIKit

class RecommendTableViewCell: UITableViewCell {
    static let identifier = "RecommentTableViewCell"
    
    private let bookImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "book2")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    private let bookTitleLabel: UILabel = {
        let bookTitleLabel = UILabel()
        bookTitleLabel.textColor = .black
        bookTitleLabel.font = .systemFont(ofSize: 17, weight:.bold)
        bookTitleLabel.text = "책 제목"
        return bookTitleLabel
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .orange
        contentView.addSubview(bookImageView)
        contentView.addSubview(bookTitleLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        bookTitleLabel.frame = CGRect(x: 10, y: 0, width: contentView.frame.size.width - 10, height: contentView.frame.size.height)
        bookImageView.frame = CGRect(x: contentView.frame.size.width, y: 3, width: contentView.frame.size.width, height: contentView.frame.size.width)
    }
}
