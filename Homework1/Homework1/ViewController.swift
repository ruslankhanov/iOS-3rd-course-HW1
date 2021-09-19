//
//  ViewController.swift
//  Homework1
//
//  Created by Ruslan Khanov on 19.09.2021.
//

import UIKit

class ViewController: UIViewController {

    private lazy var label: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.backgroundColor = .black
        label.layer.cornerRadius = 3;
        label.layer.masksToBounds = true;
        return label
    }()

    private lazy var button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        label.text = "Hello, World!"

        view.addSubview(label)

        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])

        button.setTitle("Hi!", for: .normal)
        button.setTitleColor(.link, for: .normal)
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            button.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}

