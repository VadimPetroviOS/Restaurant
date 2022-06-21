import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = .white
        
        self.addSubviews()
        
    }
    
    let signInLabel: UILabel = {
        let label = UILabel()
        label.text = "Sign In"
        label.font = UIFont.systemFont(ofSize: 30)
        label.frame = CGRect(x: 50, y: 250, width: 300, height: 200)
        
        return label
    }()
    
    let mailLabel: UILabel = {
        let label = UILabel()
        label.text = "Email"
        label.textColor = UIColor.red
        label.frame = CGRect(x: 50, y: 350, width: 300, height: 100)
        
        return label
    }()
    
    let passwordLabel: UILabel = {
        let label = UILabel()
        label.text = "Password"
        label.frame = CGRect(x: 50, y: 420, width: 300, height: 100)
        label.textColor = UIColor.red
        
        return label
    }()
    
    let firstLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 50, y: 175, width: 200, height: 50)
        label.text = "Company Apple"
        label.font = UIFont.systemFont(ofSize: 20)
        
        return label
    }()
    
    let firstIconLabel: UIImageView = {
        let iconLabel = UIImageView(frame: CGRect(x: 78, y: 75, width: 225, height: 225))
        iconLabel.image = UIImage(systemName: "cloud.fill")
        iconLabel.tintColor = UIColor.lightGray
        iconLabel.contentMode = .scaleAspectFit
        
        return iconLabel
    }()
    
    let mailTextField: UITextField = {
        let textfield = UITextField()
        let line = CALayer()
        textfield.frame = CGRect(x: 50, y: 410, width: 300, height: 31)
        textfield.placeholder = "Example@email.com"
        textfield.borderStyle = UITextField.BorderStyle.none
        textfield.layer.addSublayer(line)
        line.frame = CGRect(x: 0.0, y: textfield.frame.height - 1, width: textfield.frame.width, height: 1.0)
        line.backgroundColor = UIColor.gray.cgColor
        
        return textfield
    }()
    
    let passwordTextField: UITextField = {
        let textfield = UITextField()
        let line = CALayer()
        textfield.frame = CGRect(x: 50, y: 480, width: 300, height: 31)
        textfield.placeholder = "**********"
        textfield.borderStyle = UITextField.BorderStyle.none
        textfield.layer.addSublayer(line)
        line.frame = CGRect(x: 0.0, y: textfield.frame.height - 1, width: textfield.frame.width, height: 1.0)
        line.backgroundColor = UIColor.gray.cgColor
        
        return textfield
    }()
    
    let myButton: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 50, y: 600, width: 300, height: 70)
        button.backgroundColor = UIColor.red
        button.setTitle("Войти", for: .normal)
        button.setTitle("", for: .highlighted)
        button.addTarget(self, action: #selector(myButtonAction(parametrSender:)), for: .touchUpInside)
        
        return button
    }()
    
    let passwordIcon: UIImageView = {
        let icon = UIImageView(frame: CGRect(x: 270, y: 0, width: 25, height: 25))
        icon.image = UIImage(systemName: "eye.fill")
        icon.contentMode = .scaleAspectFit
        
        
        return icon
    }()
    
    let correctLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 170, y: 670, width: 200, height: 50)
        
        return label
    }()
    
    func addSubviews() {
        self.view.addSubview(self.signInLabel)
        self.view.addSubview(self.mailLabel)
        self.view.addSubview(self.passwordLabel)
        self.view.addSubview(self.firstIconLabel)
        self.firstIconLabel.addSubview(self.firstLabel)
        self.view.addSubview(self.mailTextField)
        self.view.addSubview(self.myButton)
        self.view.addSubview(self.passwordTextField)
        setupUI()
        self.view.addSubview(self.correctLabel)
    }
    
    @objc func myButtonAction(parametrSender: Any) {
        if mailTextField.text!.isEmpty {
            correctLabel.text = "Введите емайл"
        } else if mailTextField.text!.count < 3 {
            correctLabel.text = "Введите корректный емайл"
        } else if mailTextField.text!.isEmpty == false && passwordTextField.text!.isEmpty  {
            correctLabel.text = "Введите пароль"
        } else {
            let vc = SecondViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer) {
        if passwordIcon.image == UIImage(systemName: "eye.fill") {
            passwordIcon.image = UIImage(systemName: "eye.slash.fill")
        } else {
            passwordIcon.image = UIImage(systemName: "eye.fill")
        }
        passwordTextField.isSecureTextEntry = !passwordTextField.isSecureTextEntry
    }
        
    func setupUI() {
        passwordIcon.isUserInteractionEnabled = true
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        passwordIcon.addGestureRecognizer(tapGestureRecognizer)
        passwordTextField.rightView = passwordIcon
        passwordTextField.rightViewMode = .always
        
    }
}
    /*
    
    // iconPassword //проблема с именами
    
    iconPassword = UIImageView(frame: CGRect(x: 270, y: 0, width: 25, height: 25)) // устанавливаем координаты
    iconPassword.image = UIImage(systemName: "eye.fill")
    iconPassword.contentMode = .scaleAspectFit  // соблюдаем пропорции
    iconPassword.isUserInteractionEnabled = true
    let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
    iconPassword.addGestureRecognizer(tapGestureRecognizer)
    
     
    textFieldPassword.rightViewMode = .always
    textFieldPassword.rightView = iconPassword
    self.view.addSubview(textFieldPassword)
    
    
    @objc func myButtonAction(parametrSender: Any) {
        let vc = SecondViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer) {
        if iconPassword.image == UIImage(systemName: "eye.fill") {
            iconPassword.image = UIImage(systemName: "eye.slash.fill")
        } else {
            iconPassword.image = UIImage(systemName: "eye.fill")
        }
        textFieldPassword.isSecureTextEntry = !textFieldPassword.isSecureTextEntry
    }

}








/*
 func createEyeTapRecognizer() {
     imgPasswordEye.image = UIImage(named: "openedEye")
     let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
     imgPasswordEye.addGestureRecognizer(tapGestureRecognizer)
 }
 
 @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer) {
     if imgPasswordEye.image == UIImage(named: "openedEye") {
         imgPasswordEye.image = UIImage(named: "closedEye")
     } else {
         imgPasswordEye.image = UIImage(named: "openedEye")
     }
     txtPassword.isSecureTextEntry = !txtPassword.isSecureTextEntry
 }
 */

/*
 import UIKit

 class ViewController: UIViewController {
     // Создаем экземпляр класса
     let mySwitch = UISwitch()
     let mySwitchTwo = UISwitch()
     // Создаем кнопку
     let myButton = UIButton()
     
     override func viewDidLoad() {
         super.viewDidLoad()
         
         self.myButton.frame = CGRect(x: 100, y: 200, width: 200, height: 100)
         self.myButton.backgroundColor = UIColor.orange
         self.view.addSubview(self.myButton)
         self.myButton.setTitle("ОК", for: .normal)
         self.myButton.setTitle("Кнопка нажата", for: .highlighted)
         
         self.mySwitchTwo.center = self.view.center
         self.view.addSubview(self.mySwitchTwo)
         
         self.mySwitchTwo.tintColor = UIColor.green
         self.mySwitchTwo.thumbTintColor = UIColor.red
         self.mySwitchTwo.onTintColor = UIColor.blue
         
         self.mySwitchTwo.addTarget(self, action: #selector(isOn(target:)), for: .valueChanged)
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         //1 Создаем свитч на фрейме(создаем кнопку на экране)
         self.mySwitch.frame = CGRect(x: 100, y: 100, width: 0, height: 0)
         //1 Добавляем экран на то что видит пользователь (view)
         self.view.addSubview(self.mySwitch)
         
         //1 Выключаем наш свич
         self.mySwitch.setOn(false, animated: true)
         
         //1 Проверяем вкючен ли свич один раз
         if self.mySwitch.isOn {
             print("sw on")
         } else {
             print("sw off")
         }
         
         //1 Проверяем вкл/выкл свич постоянно
         
         self.mySwitch.addTarget(self, action: #selector(switcChange(paramTarget:)) , for: .valueChanged)
     }

     @objc func switcChange(paramTarget: UISwitch) {
         print("param is = ", paramTarget)
         
         if paramTarget.isOn {
             print("sw on")
         } else {
             print("sw off")
         }
     }
     
     
     @objc func isOn(target: UISwitch) {
         if target.isOn {
             self.myButton.isUserInteractionEnabled = false
         } else {
             self.myButton.isUserInteractionEnabled = true

         }
     }
 }

*/
*/



