//
//  ViewController.swift
//  language
//
//  Created by Nikesh Hyanju on 10/25/17.
//  Copyright © 2017 zlesa. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var buttonLogin: UIButton!
    
    @IBOutlet weak var textfieldPassword: UITextField!
    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelPassword: UILabel!
    var bundle: Bundle = Bundle(){
        didSet{
            
            localizeString()
        }
    }
    func localizeString(){
        print(bundle)
        
        
        textFieldName.placeholder =  NSLocalizedString("KUserName", bundle: bundle, comment: "hello")
        textfieldPassword.placeholder = NSLocalizedString("KPassword", bundle: bundle, comment: "hello")
        labelName.text =  NSLocalizedString("KName", bundle: bundle, comment: "hello")
        labelPassword.text =  NSLocalizedString("KPwd", bundle: bundle, comment: "hello")
        buttonLogin.setTitle(NSLocalizedString("KLogin", bundle: bundle, comment: "hello"), for: UIControlState())
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        bundle = LanguageManager.sharedInstance.getCurrentBundle()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonEnglish(_ sender: Any) {
        LanguageManager.sharedInstance.setLocale("en")
        bundle = LanguageManager.sharedInstance.getCurrentBundle()
        localizeString()
        
    }
    @IBAction func buttonNepali(_ sender: Any) {
        LanguageManager.sharedInstance.setLocale("ne")
        bundle = LanguageManager.sharedInstance.getCurrentBundle()
        localizeString()
    }
    
}

