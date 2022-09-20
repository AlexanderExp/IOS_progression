//
//  ViewController.swift
//  asfrolov_2PW1
//
//  Created by admin on 20.09.2022.
//

import UIKit

class ViewController: UIViewController {
    var counter = 0
    @IBOutlet var views:[UIView]!
    
    @IBOutlet weak var Easter: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonChangeColor(_ sender: Any) {
        counter+=1
        let button = sender as? UIButton
        button?.isEnabled = false
        var set = Set<UIColor>()
        while set.count < views.count {
            set.insert( UIColor(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1))
        }
        UIView.animate(withDuration: 2, animations: {for view in self.views {view .layer.cornerRadius = .random(in: 0...64)
            view.backgroundColor = set.popFirst()}
        }) {completion in
            button?.isEnabled = true;}
        
        if (counter == 4) {
            Easter.backgroundColor = .black
            Easter.layer.cornerRadius = 10
        }
        }
    
    }
