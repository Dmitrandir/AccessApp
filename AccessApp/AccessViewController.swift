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
        
        setupLayout()
    }
}

//MARK: - Setting
private extension AccessViewController {
    func addSubViews() {
        [morpheusImage, quotelabel].forEach { subView in
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
}

//MARK: - Layout
private extension AccessViewController {
    func setupLayout() {
        [morpheusImage, quotelabel].forEach { view in
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
            quotelabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50)
        ])
    }
}
