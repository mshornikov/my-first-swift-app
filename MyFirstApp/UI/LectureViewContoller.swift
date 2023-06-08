//
//  LectureViewContoller.swift
//  MyFirstApp
//
//  Created by Михаил Шорников on 08.06.2023.
//

import UIKit

class LectureViewContoller: UIViewController {
    
    private var textView: UITextView!
    var lecture: Lecture? {
        didSet {
            if isViewLoaded {
                setup(with: lecture)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        view.backgroundColor = .white
        
        textView = UITextView()
        textView.isEditable = false
        textView.font = .systemFont(ofSize: 16)
        textView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(textView)

        NSLayoutConstraint.activate([
            // x1 = k*x2 + b
            textView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            textView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            textView.topAnchor.constraint (equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            textView.bottomAnchor.constraint(equalTo:view.safeAreaLayoutGuide.bottomAnchor, constant: -8),
        ])
        
        setup(with: lecture)
        // Do any additional setup after loading the view.
    }
    
    private func setup(with lecture: Lecture?) {
        if let lecture {
            textView.text = lecture.description
            navigationItem.title = lecture.name
        } else {
            textView.text = nil
            navigationItem.title = nil
        }
    }

}
