//
//  MainViewController.swift
//  RxSwiftExample
//
//  Created by Nguyen Duc Hoang on 8/28/18.
//  Copyright © 2018 Nguyen Duc Hoang. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class MainViewController: UIViewController {
    @IBOutlet var txtName:UITextField!
    @IBOutlet var txtEmail:UITextField!
    
    @IBOutlet var lblValidateName:UILabel?
    @IBOutlet var lblValidateEmail:UILabel?
    
    @IBOutlet var lblDescription:UILabel!
    
    @IBOutlet var btnLogin:UIButton?
    
    @IBAction func btnLogin(sender: Any) {
        
    }
    var disposeBag = DisposeBag()
    override func viewDidLoad() {
        super.viewDidLoad()
        Observable.combineLatest(txtName.rx.text.orEmpty, txtEmail.rx.text.orEmpty){ (name: String, email: String) -> (name: String, email: String) in
            return (name , email)
            }.map { (pair)  in
                return "You typed: \(pair.name) and: \(pair.email)"
        }.bind(to: lblDescription.rx.text).disposed(by: disposeBag)
        txtName.rx.text.map{text in
            return text ?? ""
        }
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
