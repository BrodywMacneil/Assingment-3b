// Created on: Oct-2018
// Created by: Brody Macneil
// Created for: ICS3U
// This program determinesrice of a pizza
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    
    let instructionLabel = UILabel()
    let sizeTexgField = UITextField()
    let toppingsTextField = UITextField()
    let checkButton = UIButton()
    let answerLabel = UILabel()
    let HST : Float = 0.13
    let taxLabel = UILabel()
    let totalLabel = UILabel()
    let randomLabel = UILabel()
    var topPrice : Float? = nil
    var sizePrice : Float? = nil
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        instructionLabel.text = "Input 1 for L and 2 for XL and enter # of toppings we will find out the price."
        view.addSubview(instructionLabel)
        instructionLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        instructionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:20).isActive = true
        
        sizeTexgField.borderStyle = UITextBorderStyle.roundedRect
        sizeTexgField.placeholder = "Enter size of pizza"
        view.addSubview(sizeTexgField)
        sizeTexgField.translatesAutoresizingMaskIntoConstraints = false
        sizeTexgField.topAnchor.constraint(equalTo: instructionLabel.bottomAnchor, constant: 20).isActive = true
        sizeTexgField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        toppingsTextField.borderStyle = UITextBorderStyle.roundedRect
        toppingsTextField.placeholder = "Enter # of toppings"
        view.addSubview(toppingsTextField)
        toppingsTextField.translatesAutoresizingMaskIntoConstraints = false
        toppingsTextField.topAnchor.constraint(equalTo: sizeTexgField.bottomAnchor, constant: 20).isActive = true
        toppingsTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        checkButton.setTitle("Calculate", for: .normal)
        checkButton.setTitleColor(.blue, for: .normal)
        checkButton.titleLabel?.textAlignment = .center
        checkButton.addTarget(self, action: #selector(checkPrice), for: .touchUpInside)
        view.addSubview(checkButton)
        checkButton.translatesAutoresizingMaskIntoConstraints = false
        checkButton.topAnchor.constraint(equalTo: toppingsTextField.bottomAnchor, constant: 20).isActive = true
        checkButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        answerLabel.text = nil
        view.addSubview(answerLabel)
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        answerLabel.topAnchor.constraint(equalTo: checkButton.bottomAnchor, constant: 20).isActive = true
        answerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        taxLabel.text = nil
        view.addSubview(taxLabel)
        taxLabel.translatesAutoresizingMaskIntoConstraints = false
        taxLabel.topAnchor.constraint(equalTo: answerLabel.bottomAnchor, constant: 20).isActive = true
        taxLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        totalLabel.text = nil
        view.addSubview(totalLabel)
        totalLabel.translatesAutoresizingMaskIntoConstraints = false
        totalLabel.topAnchor.constraint(equalTo: taxLabel.bottomAnchor, constant: 20).isActive = true
        totalLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
    }
    
    @objc func checkPrice() {
        // check price for the pizza 
        //input
        let toppingsEntered : Float = Float(toppingsTextField.text!)!
        let sizeEntered : Float = Float(sizeTexgField.text!)!
        // process
        if sizeEntered == 2 {
            //output
            sizePrice = 10.00
        }
        if sizeEntered == 1  {
            sizePrice = 6.00
        }
    if toppingsEntered == 2  {
        topPrice = 1.75
        answerLabel.text = "Subtotal is $\(topPrice! + sizePrice!)"
        taxLabel.text = "HST is $\(topPrice! + sizePrice! * HST)"
        totalLabel.text = "Your total is $\((topPrice! + sizePrice!) * (HST + 1))"
        }
        if toppingsEntered == 1 {
    topPrice = 1
            answerLabel.text = "Subtotal is $\(topPrice! + sizePrice!)"
            taxLabel.text = "HST is $\((topPrice! + sizePrice!) * HST)"
            totalLabel.text = "Your total is $\((topPrice! + sizePrice!) * (HST + 1))"
        }
        if toppingsEntered == 3 {
            topPrice = 2.5
            answerLabel.text = "Subtotal is $\(topPrice! + sizePrice!)"
            taxLabel.text = "HST is $\((topPrice! + sizePrice!) * HST)"
            totalLabel.text = "Your total is $\((topPrice! + sizePrice!) * (HST + 1))"
        }
        if toppingsEntered == 4 {
            topPrice = 3.25
            answerLabel.text = "Subtotal is $\(topPrice! + sizePrice!)"
            taxLabel.text = "HST is $\((topPrice! + sizePrice!) * HST)"
            totalLabel.text = "Your total is $\((topPrice! + sizePrice!) * (HST + 1))"
        }
        if toppingsEntered == 0 {
            topPrice = 0
            answerLabel.text = "Subtotal is $\(sizePrice!)"
            taxLabel.text = "HST is $\((sizePrice!) * HST)"
            totalLabel.text = "Your total is $\((sizePrice!) * (HST + 1))"
        }
    }
        override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
