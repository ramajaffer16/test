//
//  RulesVC.swift
//  practice_project1
//
//  Created by RAMA on 19/02/2025.
//

import Foundation
import UIKit
class rulesVC:UIViewController{
    let titleLabel:UILabel = {
        let label = UILabel()
        label.text = "Rules of the Game"
        label.textAlignment = .center
        return label
    }()
    
    let rulesLabel:UILabel = {
        let label = UILabel()
        label.text = "Each picture has its on meaning of about your character\n Just observe careful to know the kind of person you are"
        label.textAlignment = .center
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        return label
    }()
    
    let exerciseLabel:UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.text = "👩‍🦳 = You are charming and adorable \n\n 🌺 = You have good luck in your life so often\n\n  🛣️ = Good things are yet to come\n\n  🌴 = Just Work Hard mehn😜\n\n  AnyOther = \"In God We Trust😎\""
        label.textAlignment = .center
        return label
    }()
    
    override func viewDidLoad(){
        super.viewDidLoad()
        configureUI()
        view.backgroundColor = .white
    }
    
    func configureUI(){
        configuretitleLabel()
        configurerulesLabel()
        configureExerciseLabel()
    }
    
    func configuretitleLabel(){
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),titleLabel.widthAnchor.constraint(equalToConstant: 200),titleLabel.heightAnchor.constraint(equalToConstant: 50),titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)])
        
    }
    
    
    
    func configurerulesLabel(){
        view.addSubview(rulesLabel)
        rulesLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([rulesLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),rulesLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),rulesLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)])
        
    }
    
    
    func configureExerciseLabel(){
        view.addSubview(exerciseLabel)
        exerciseLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([exerciseLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),exerciseLabel.widthAnchor.constraint(equalToConstant: 400),exerciseLabel.topAnchor.constraint(equalTo: rulesLabel.bottomAnchor, constant: 50)])
    }
    
}
