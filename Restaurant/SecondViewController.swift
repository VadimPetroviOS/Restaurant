import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Cafe"
        view.backgroundColor = .white
        
        self.addSubviews()
        
    }
    
    let fioLabel: UILabel = {
        let label = UILabel()
        label.text = "Фио"
        label.frame = CGRect(x: 50, y: 200, width: 300, height: 31)
        label.textColor = UIColor.red
        
        return label
    }()

    let fioTextField: UITextField = {
        let textfield = UITextField()
        let line = CALayer()
        textfield.frame = CGRect(x: 50, y: 225, width: 300, height: 31)
        textfield.placeholder = "Введите имя"
        textfield.borderStyle = UITextField.BorderStyle.none
        textfield.layer.addSublayer(line)
        line.frame = CGRect(x: 0.0, y: textfield.frame.height - 1, width: textfield.frame.width, height: 1.0)
        line.backgroundColor = UIColor.gray.cgColor
        
        
        return textfield
    }()
    
    let numberGuestsLabel: UILabel = {
        let label = UILabel()
        label.text = "Количеств гостей"
        label.frame = CGRect(x: 50, y: 275, width: 300, height: 31)
        label.textColor = UIColor.red
        
        return label
    }()

    let numberGuestsTextField: UITextField = {
        let textfield = UITextField()
        let line = CALayer()
        textfield.frame = CGRect(x: 50, y: 300, width: 300, height: 31)
        textfield.placeholder = "Введите количество"
        textfield.borderStyle = UITextField.BorderStyle.none
        textfield.layer.addSublayer(line)
        line.frame = CGRect(x: 0.0, y: textfield.frame.height - 1, width: textfield.frame.width, height: 1.0)
        line.backgroundColor = UIColor.gray.cgColor
        
        return textfield
    }()
    
    let numberTableLabel: UILabel = {
        let label = UILabel()
        label.text = "Номер стола"
        label.frame = CGRect(x: 50, y: 350, width: 300, height: 31)
        label.textColor = UIColor.red
        
        return label
    }()

    let numberTableTextField: UITextField = {
        let textfield = UITextField()
        let line = CALayer()
        textfield.frame = CGRect(x: 50, y: 375, width: 300, height: 31)
        textfield.placeholder = "Стол номер"
        textfield.borderStyle = UITextField.BorderStyle.none
        textfield.layer.addSublayer(line)
        line.frame = CGRect(x: 0.0, y: textfield.frame.height - 1, width: textfield.frame.width, height: 1.0)
        line.backgroundColor = UIColor.gray.cgColor
        
        return textfield
    }()
    
    let reservationLabel: UILabel = {
        let label = UILabel()
        label.text = "Бронировали стол?"
        label.frame = CGRect(x: 75, y: 450, width: 300, height: 31)
        label.textColor = UIColor.red
        
        return label
    }()
    
    let reservationSwitch: UISwitch = {
        var mySwitch = UISwitch()
        mySwitch.frame = CGRect(x: 275, y: 450, width: 200, height: 31)

        return mySwitch
    }()
    
    let prepaymentLabel: UILabel = {
        let label = UILabel()
        label.text = "Предоплата?"
        label.frame = CGRect(x: 75, y: 525, width: 300, height: 31)
        label.textColor = UIColor.red
        
        return label
    }()
    
    let prepaymentSwitch: UISwitch = {
        var mySwitch = UISwitch()
        mySwitch.frame = CGRect(x: 275, y: 525, width: 200, height: 31)
        
        return mySwitch
    }()
    
    let vipLabel: UILabel = {
        let label = UILabel()
        label.text = "VIP комната?"
        label.frame = CGRect(x: 75, y: 600, width: 300, height: 31)
        label.textColor = UIColor.red
        
        return label
    }()
    
    let vipSwitch: UISwitch = {
        var mySwitch = UISwitch()
        mySwitch.frame = CGRect(x: 275, y: 600, width: 200, height: 31)
        
        
        return mySwitch
    }()
    
    let myButton: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 50, y: 750, width: 300, height: 70)
        button.backgroundColor = UIColor.red
        button.setTitle("Выставить счет", for: .normal)
        button.setTitle("", for: .highlighted)
        button.addTarget(self, action: #selector(alertButton(parametrSender:)), for: .touchUpInside)
        
        return button
    }()
    
    let alertController: UIAlertController = {
        let alertController = UIAlertController(title: "Выставить чек?", message: "", preferredStyle: .alert)
        
        /*
        let alert = UIAlertAction(title: "Cancel", style: .default) { (alert) in }
        let check = UIAlertAction(title: "Чек", style: .default) { (check) -> Void in
            /*
            let rootVC = FourthViewController()
            let sVC = SecondViewController()
            sVC.navigationController?.pushViewController(rootVC, animated: true)
            */
            
            
            
            
        }
        
        alertController.addAction(alert)
        alertController.addAction(check)
        */
        
        return alertController
    }()
    
    func addSubviews() {
        self.view.addSubview(self.fioLabel)
        self.view.addSubview(self.fioTextField)
        self.view.addSubview(self.numberGuestsLabel)
        self.view.addSubview(self.numberGuestsTextField)
        self.view.addSubview(self.numberTableLabel)
        self.view.addSubview(self.numberTableTextField)
        self.view.addSubview(self.reservationLabel)
        self.view.addSubview(self.reservationSwitch)
        self.view.addSubview(self.prepaymentLabel)
        self.view.addSubview(self.prepaymentSwitch)
        self.view.addSubview(self.vipLabel)
        self.view.addSubview(self.vipSwitch)
        self.view.addSubview(self.myButton)
        setupUI()
        showAlert()
    }
    
    func setupUI() {
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        numberTableTextField.addGestureRecognizer(tapGestureRecognizer)
    }
    
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer) {
        let aaa = TripleViewController()
        var sumStroka = ""
        aaa.callback = {n in
            sumStroka += "\(n!) "
            self.numberTableTextField.text = sumStroka
            
        }
        present(aaa, animated: true)
        
        
    }
    
    @objc func alertButton(parametrSender: Any) {
        present(alertController, animated: true, completion: nil)
    }
    
    func showAlert() {
        
        let alert = UIAlertAction(title: "Cancel", style: .default) { (alert) in }
        let check = UIAlertAction(title: "Чек", style: .default) { (check) in
            
            let rootVC = FourthViewController()
            self.navigationController?.pushViewController(rootVC, animated: true)
            
        }
        
        alertController.addAction(alert)
        alertController.addAction(check)
        
        
    }
    
    
}


/*
 как работает UIAlertController?
 
 я создаю переменную alertController
 которой задаю тип UIAlertController
 и передаю в нее клоужер
 
 - внутри кложуера задаю свойства которые потом передаю в экземпляр класса, что значит передаю свойства в класс
 - значит это класс обладает этими свойствами и их можно вызвать
 - но если это класс то где инициализатор?
 
 */

