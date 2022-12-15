//
//  ViewController.swift
//  AccessApp
//
//  Created by Дмитрий Солопов on 13.12.2022.
//

import UIKit

//MARK: - AccessViewController
final class AccessViewController: UIViewController {
    
    //MARK: - Private property
    private let morpheusImage = UIImageView()
    private let quotelabel = UILabel()
    
    private let redPillButton = CustomButton(title: "Красная таблетка",
                                             backgroundColor: .systemRed,
                                             isShadow: true)
    private let bluePillButton = CustomButton(title: "Синяя таблетка",
                                              backgroundColor: .systemBlue,
                                              isShadow: true)
    private let callingAgentButton = CustomButton(title: "Вызвать агента Смита",
                                                  backgroundColor: .systemMint,
                                                  isShadow: false,
                                                  titleColor: .black)
    
    private let buttonContainer = UIStackView()
    
    //MARK: Override method
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
}

//MARK: - Settings View
private extension AccessViewController {
    func setupView() {
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        addSubViews()
        
        setupMorpheusImage()
        setupQuoteLabel()
        setupbuttonContainer()
        
        setupLayout()
    }
}

//MARK: - Setting
private extension AccessViewController {
    func addSubViews() {
        [morpheusImage, quotelabel, buttonContainer, callingAgentButton].forEach { subView in
            view.addSubview(subView)
        }
    }
    
    func setupMorpheusImage() {
        morpheusImage.image = UIImage(named: "morpheus")
        morpheusImage.contentMode = .scaleAspectFit
    }
    
    func setupQuoteLabel() {
        quotelabel.text = "Выберешь красную таблетку, останешься в стране чудес, и я покажу, как глубока кроличья нора."
        quotelabel.lineBreakMode = .byWordWrapping
        quotelabel.numberOfLines = 0
        quotelabel.textAlignment = .center
    }
    
    func setupbuttonContainer() {
        buttonContainer.axis = .horizontal
        buttonContainer.spacing = 20
        buttonContainer.distribution = .fillEqually
        
        buttonContainer.addArrangedSubview(redPillButton)
        buttonContainer.addArrangedSubview(bluePillButton)
    }
    
    func setupCallingAgent() {
        
    }
    
}

//MARK: - Layout
private extension AccessViewController {
    func setupLayout() {
        [morpheusImage, quotelabel,
         redPillButton, bluePillButton,
         callingAgentButton, buttonContainer].forEach { view in
            view.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([
            morpheusImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            morpheusImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            morpheusImage.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4),
            morpheusImage.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.33),
            
            quotelabel.topAnchor.constraint(equalTo: morpheusImage.bottomAnchor, constant: 10),
            quotelabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            quotelabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            quotelabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            
            buttonContainer.topAnchor.constraint(equalTo: morpheusImage.bottomAnchor, constant: 150),
            buttonContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            buttonContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            buttonContainer.heightAnchor.constraint(equalToConstant: 50),
        
            
            callingAgentButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
            callingAgentButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            callingAgentButton.heightAnchor.constraint(equalToConstant: 50),
            callingAgentButton.widthAnchor.constraint(equalToConstant: 180)
        ])
    }
}
