import UIKit

class TripleViewController: UIViewController {

    static let widthButton = 110
    static let heightButton = 110
    static let indentLeft = 40
    static let indentTop = 235
    static let space = 5
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addSubviews()
    }
    
    
    var callback: ((String?) -> Void)?
    
    let firstButton: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: indentLeft,
                              y: indentTop,
                              width: widthButton,
                              height: heightButton)
        button.backgroundColor = UIColor.red
        button.setTitle("Busy", for: .normal)
        
        return button
    }()
    
    let secondButton: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: indentLeft + space + widthButton,
                              y: indentTop,
                              width: widthButton,
                              height: heightButton)
        button.backgroundColor = UIColor.lightGray
        button.setTitle("Reserv", for: .normal)
        
        return button
    }()
    
    let thirdButton: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: indentLeft + widthButton + space + widthButton + space,
                              y: indentTop,
                              width: widthButton,
                              height: heightButton)
        button.backgroundColor = UIColor.blue
        button.setTitle("Free", for: .normal)
        button.addTarget(self, action: #selector(myThirdButtonAction(parametrSender:)), for: .touchUpInside)
        
        return button
    }()
    
    let fourthButton: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: indentLeft,
                              y: indentTop + space + heightButton,
                              width: widthButton,
                              height: heightButton)
        button.backgroundColor = UIColor.lightGray
        button.setTitle("Reserv", for: .normal)
        
        return button
    }()
    
    let fifthButton: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: indentLeft + widthButton + space,
                              y: indentTop + space + heightButton,
                              width: widthButton,
                              height: heightButton)
        button.backgroundColor = UIColor.blue
        button.setTitle("Free", for: .normal)
        button.addTarget(self, action: #selector(myFifthButtonAction(parametrSender:)), for: .touchUpInside)
        
        return button
    }()
    
    let sixthButton: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: indentLeft + widthButton + space + widthButton + space,
                              y: indentTop + space + heightButton,
                              width: widthButton,
                              height: heightButton)
        button.backgroundColor = UIColor.red
        button.setTitle("Busy", for: .normal)
        
        return button
    }()
    
    let seventhButton: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: indentLeft,
                              y: indentTop + space + heightButton + space + heightButton,
                              width: widthButton,
                              height: heightButton)
        button.backgroundColor = UIColor.blue
        button.setTitle("Free", for: .normal)
        button.addTarget(self, action: #selector(mySeventhButtonAction(parametrSender:)), for: .touchUpInside)
        
        return button
    }()
    
    let eigthButton: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: indentLeft + widthButton + space,
                              y: indentTop + space + heightButton + space + heightButton,
                              width: widthButton,
                              height: heightButton)
        button.backgroundColor = UIColor.red
        button.setTitle("Busy", for: .normal)
        
        return button
    }()
    
    let ninthButton: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: indentLeft + widthButton + space + widthButton + space,
                              y: indentTop + space + heightButton + space + heightButton,
                              width: widthButton,
                              height: heightButton)
        button.backgroundColor = UIColor.blue
        button.setTitle("Free", for: .normal)
        button.addTarget(self, action: #selector(myNinthButtonAction(parametrSender:)), for: .touchUpInside)
        
        return button
    }()
    
    
    func addSubviews() {
        self.view.addSubview(firstButton)
        self.view.addSubview(secondButton)
        self.view.addSubview(thirdButton)
        self.view.addSubview(fourthButton)
        self.view.addSubview(fifthButton)
        self.view.addSubview(sixthButton)
        self.view.addSubview(seventhButton)
        self.view.addSubview(eigthButton)
        self.view.addSubview(ninthButton)
    }
    
    @objc func myThirdButtonAction(parametrSender: Any) {
        thirdButton.backgroundColor = UIColor.lightGray
        thirdButton.setTitle("You Reserv", for: .normal)
        self.callback?("3")
    }
    
    @objc func myFifthButtonAction(parametrSender: Any) {
        
        fifthButton.backgroundColor = UIColor.lightGray
        fifthButton.setTitle("You Reserv", for: .normal)
        self.callback?("5")
    }
    
    @objc func mySeventhButtonAction(parametrSender: Any) {
        
        seventhButton.backgroundColor = UIColor.lightGray
        seventhButton.setTitle("You Reserv", for: .normal)
        self.callback?("7")
    }
    
    @objc func myNinthButtonAction(parametrSender: Any) {
        
        ninthButton.backgroundColor = UIColor.lightGray
        ninthButton.setTitle("You Reserv", for: .normal)
        self.callback?("9")
    }
    
}




