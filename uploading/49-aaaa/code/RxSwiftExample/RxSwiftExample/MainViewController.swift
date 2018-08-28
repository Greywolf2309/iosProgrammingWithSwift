//
//  MainViewController.swift
//  RxSwiftExample
//
//  Created by Nguyen Duc Hoang on 8/28/18.
//  Copyright © 2018 Nguyen Duc Hoang. All rights reserved.
//

import UIKit
import RxSwift

class MainViewController: UIViewController {
    @IBOutlet weak var txtName:UITextField?
    @IBOutlet weak var txtEmail:UITextField?
    
    @IBOutlet weak var lblValidateName:UILabel?
    @IBOutlet weak var lblValidateEmail:UILabel?
    
    @IBOutlet weak var lblDescription:UILabel?
    
    @IBOutlet weak var btnLogin:UIButton?
    
    @IBAction func btnLogin(sender: Any) {
        
    }
    var countries:Observable<[String?]>?
    override func viewDidLoad() {
        super.viewDidLoad()        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
