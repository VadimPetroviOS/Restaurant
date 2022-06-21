//
//  FourthViewController.swift
//  SwitchDZ
//
//  Created by Вадим on 11.05.2022.
//

import UIKit

class FourthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.addSubviews()
        
        self.title = "Чек"
        view.backgroundColor = .white
    }
    
    let topLabel: UILabel = {
        let label = UILabel()
        label.text = "Салат Цезарь"
        label.frame = CGRect(x: 25, y: 200, width: 300, height: 31)
        label.font = UIFont.boldSystemFont(ofSize: 16)
        
        return label
    }()

    let compoundTopLabel: UILabel = {
        let label = UILabel()
        let line = CALayer()
        label.text = "Помидор, салат айсберг, сухарики, курица"
        label.frame = CGRect(x: 0, y: 20, width: 400, height: 31)
        label.textColor = UIColor.lightGray
        line.frame = CGRect(x: 0, y: 50, width: 400, height: 1)
        line.backgroundColor = UIColor.gray.cgColor
        label.layer.addSublayer(line)
        
        return label
    }()
    
    let priceTop: UILabel = {
        let label = UILabel()
        label.text = "300 р"
        label.frame = CGRect(x: 300, y: 0, width: 100, height: 31)
        
        return label
    }()
    
    let topIcon: UIImageView = {
        let icon = UIImageView(frame: CGRect(x: 50, y: 9, width: 15, height: 15))
        icon.image = UIImage(systemName: "chevron.right")
        icon.contentMode = .scaleAspectFit
        
        
        return icon
    }()
    
    let  botLabel: UILabel = {
        let label = UILabel()
        label.text = "Салат Греческий"
        label.frame = CGRect(x: 25, y: 300, width: 300, height: 31)
        label.font = UIFont.boldSystemFont(ofSize: 16)
        
        return label
    }()

    let compoundBotLabel: UILabel = {
        let label = UILabel()
        let line = CALayer()
        let lineTwo = CALayer()
        label.text = "Помидор, салат айсберг, сухарики, курица"
        label.frame = CGRect(x: 0, y: 20, width: 400, height: 31)
        label.textColor = UIColor.lightGray
        line.frame = CGRect(x: 0, y: 50, width: 400, height: 1)
        line.backgroundColor = UIColor.gray.cgColor
        label.layer.addSublayer(line)
        lineTwo.frame = CGRect(x: 30, y: 100, width: 300, height: 1)
        lineTwo.backgroundColor = UIColor.gray.cgColor
        label.layer.addSublayer(lineTwo)
        
        return label
    }()
    
    let priceBot: UILabel = {
        let label = UILabel()
        label.text = "300 р"
        label.frame = CGRect(x: 300, y: 0, width: 100, height: 31)
        
        return label
    }()
    
    let botIcon: UIImageView = {
        let icon = UIImageView(frame: CGRect(x: 50, y: 9, width: 15, height: 15))
        icon.image = UIImage(systemName: "chevron.right")
        icon.contentMode = .scaleAspectFit
        
        
        return icon
    }()
    
    let totalButton: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 200, y: 600, width: 150, height: 50)
        button.backgroundColor = UIColor.green
        button.setTitle("Итого: 700 р", for: .normal)
        
        return button
    }()
    
    func addSubviews() {
        self.view.addSubview(topLabel)
        self.topLabel.addSubview(compoundTopLabel)
        self.topLabel.addSubview(priceTop)
        self.priceTop.addSubview(topIcon)
        self.view.addSubview(botLabel)
        self.botLabel.addSubview(compoundBotLabel)
        self.botLabel.addSubview(priceBot)
        self.priceBot.addSubview(botIcon)
        self.view.addSubview(totalButton)
    }
    
}

