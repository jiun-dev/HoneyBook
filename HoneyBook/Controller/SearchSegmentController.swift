//
//  SearchSegmentController.swift
//  HoneyBook
//
//  Created by shinjiun on 2021/08/08.
//

import Foundation
import UIKit

protocol SearchSegmentControllerDelegate:AnyObject { 
    func segmentValueChanged(to index: Int)
}

class SearchSegmentController: UIView {
    private var buttonTitles: [String]!
    private var buttons: [UIButton]!
    var textColor: UIColor = .black
    
    var selectedColor: UIColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
    public private(set) var selectedIndex: Int = 0
    weak var searchBarDelegate : SearchSegmentControllerDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    convenience init(frame: CGRect, buttonTitles: [String]) {
        self.init(frame: frame)
        self.buttonTitles = buttonTitles
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        print("my custom segment - draw() call")
        updateView()
    }
    
    fileprivate func updateView() {
        print("MyCustomSegmentControll - update() call")
        createButton()
        configStackView()
    }
    
    fileprivate func createButton() {
        self.buttons = [UIButton]()
        self.buttons.removeAll()
        self.subviews.forEach({$0.removeFromSuperview()})
        for buttonTitleItem in buttonTitles {
            let button = UIButton(type: .system)
            button.backgroundColor = .white
            button.titleLabel?.textColor = .black
            button.setTitle(buttonTitleItem, for: .normal)
            button.setTitleColor(textColor, for: .normal)
            button.addTarget(self, action: #selector(SearchSegmentController.buttonAction(_:)), for: .touchUpInside)
            button.contentEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
            button.titleLabel?.adjustsFontSizeToFitWidth = true
            button.titleLabel?.minimumScaleFactor = 0.5
            self.buttons.append(button)
        }
        buttons[0].setTitleColor(selectedColor, for: .normal)
    }
    
    fileprivate func configStackView() {
        let stackView = UIStackView(arrangedSubviews: buttons)
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        self.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
    }
    
    @objc func buttonAction(_ sender: UIButton) {

        for(buttonIndex, btn) in buttons.enumerated(){
            btn.setTitleColor(textColor, for: .normal)
            if btn == sender {
                self.selectedIndex = buttonIndex
                searchBarDelegate?.segmentValueChanged(to: self.selectedIndex)
                btn.setTitleColor(#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1), for: .normal)
            } else {
                btn.setTitleColor(textColor, for: .normal)
            }
        }
    }
}
