//
//  ViewController.swift
//  birthDayNoteTaker
//
//  Created by neodiyadin on 8.08.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nametextfield: UITextField!
    @IBOutlet weak var birthdaytextfield: UITextField!
    @IBOutlet weak var namelabel: UILabel!
    @IBOutlet weak var birhdaylabel: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        
        let storedbirthday = UserDefaults.standard.object(forKey: "birthday")
        
        
        
        if let NewName = storedName as? String {
            namelabel.text = NewName
        }
        
        if let newbirthday = storedbirthday as? String {
            birhdaylabel.text = newbirthday
        }
        
        
    }

    @IBAction func saveclicked(_ sender: Any) {
        
        
        UserDefaults.standard.set(nametextfield.text!, forKey: "name")
        
        UserDefaults.standard.set(birthdaytextfield.text!, forKey: "birthday")
        
        
        namelabel.text = "name: \(nametextfield.text!)"
        birhdaylabel.text = "birthday: \(birthdaytextfield.text!)"
    }
    
    
    @IBAction func deleteclicked(_ sender: Any) {
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        
        let storedbirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if (storedName as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "name")
            
            namelabel.text = "name: "
        }
        
        if (storedbirthday as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "birthday")
            
            birhdaylabel.text = "birthday: "
        }
        
    }
    
    
}

