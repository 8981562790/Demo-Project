//
//  ViewController.swift
//  New SnapKit Demo
//
//  Created by Appsquad Pvt. Ltd. on 09/09/16.
//  Copyright © 2016 Appsquad Pvt. Ltd. All rights reserved.
//

import UIKit
import SnapKit
import Foundation
var m = ""

class ViewController: UIViewController {
    
 
    lazy var box = UIView()
    var labal1 = UILabel()
    var namleLable = UILabel()
    var NameText = UITextField()
    var addressLabel = UILabel()
    var addressText = UITextField()
    var mobileLabel = UILabel()
    var mobileText = UITextField()
    var emailLabel = UILabel()
    var emailTextField = UITextField()
    var SignUpButton = UIButton()
    
   

    override func viewDidLoad() {
        
        super.viewDidLoad()
        box.backgroundColor = UIColor.cyanColor()
        labal1.backgroundColor = UIColor.cyanColor()
       
        namleLable.layer.borderWidth = 2.0
        namleLable.layer.cornerRadius = 8
        namleLable.backgroundColor = UIColor.whiteColor()
        namleLable.layer.masksToBounds = true
       
        NameText .backgroundColor = UIColor.whiteColor()
        NameText.layer.cornerRadius = 8
        NameText.layer.masksToBounds = true
        
        
        addressLabel.layer.borderWidth = 2.0
        addressLabel.layer.cornerRadius = 8
        addressLabel.backgroundColor = UIColor.whiteColor()
        addressLabel.layer.masksToBounds = true

        
        addressText .backgroundColor = UIColor.whiteColor()
        addressText.layer.cornerRadius = 8
        addressText.layer.masksToBounds = true
        
        
        
       
        mobileLabel.layer.borderWidth = 2.0
        mobileLabel.layer.cornerRadius = 8
        mobileLabel.backgroundColor = UIColor.whiteColor()
        mobileLabel.layer.masksToBounds = true

        
        mobileText.backgroundColor = UIColor.whiteColor()
        mobileText.layer.cornerRadius = 8
        mobileText.layer.masksToBounds = true
        
        emailLabel.layer.borderWidth = 2.0
        emailLabel.layer.cornerRadius = 8
        emailLabel.backgroundColor = UIColor.whiteColor()
        emailLabel.layer.masksToBounds = true
        
        
        emailTextField.backgroundColor = UIColor.whiteColor()
        emailTextField.layer.cornerRadius = 8
        emailTextField.layer.masksToBounds = true
        
        SignUpButton.layer.borderWidth = 3.0
        SignUpButton.backgroundColor = UIColor.orangeColor()
        SignUpButton.layer.cornerRadius = 15
        
        // Do any additional setup after loading the view, typically from a nib.
        self.view.addSubview(box)
        box.snp_makeConstraints { make in
            make.width.height.equalTo(self.view)
            make.center.equalTo(self.view)
            
           // for title lable
           self.view.addSubview(labal1)
            labal1.snp_makeConstraints(closure: { (make) in
                make.top.equalTo(self.view).offset(40)
                make.height.equalTo(44)
                make.left.equalTo(self.view).offset(20)
                make.right.equalTo(self.view).offset(-20)
                labal1.text = String(" Sign-UP");
                labal1.textAlignment = NSTextAlignment.Center
            
            })
            
            
            // for name lable only
            self.view.addSubview(namleLable)
            namleLable.snp_makeConstraints(closure: { (make) in
                make.top.equalTo(self.labal1.snp_bottom).offset(10)
                make.height.equalTo(40)
                make.left.equalTo(self.view).offset(20)
                make.right.equalTo(self.view).offset(-20)
                namleLable.text = String(" Name")
                namleLable.textAlignment = NSTextAlignment.Left
            })
            
            // for name text 
            self.view.addSubview(NameText)
            NameText.snp_makeConstraints(closure: { (make) in
                make.top.equalTo(self.namleLable.snp_bottom).offset(10)
                make.height.equalTo(40)
                make.left.equalTo(self.view).offset(20)
                make.right.equalTo(-20)
                NameText.placeholder = " Enter your name pleaese"
            })
            
            // for address
            self.view.addSubview(addressLabel)
            addressLabel.snp_makeConstraints(closure: { (make) in
                make.top.equalTo(self.NameText.snp_bottom).offset(10)
                make.height.equalTo(40)
                make.left.equalTo(self.view).offset(20)
                make.right.equalTo(self.view).offset(-20)
                addressLabel.text = String(" Address")
                addressLabel.textAlignment = NSTextAlignment.Left
            })
            
            // for address text
            self.view.addSubview(addressText)
            addressText.snp_makeConstraints(closure: { (make) in
                make.top.equalTo(self.addressLabel.snp_bottom).offset(10)
                make.height.equalTo(40)
                make.left.equalTo(self.view).offset(20)
                make.right.equalTo(-20)
                addressText.placeholder = " Enter your address pleaese"
            })
            
            // mobile label
            self.view.addSubview(mobileLabel)
            mobileLabel.snp_makeConstraints(closure: { (make) in
                make.top.equalTo(self.addressText.snp_bottom).offset(10)
                make.height.equalTo(40)
                make.left.equalTo(self.view).offset(20)
                make.right.equalTo(-20)
                mobileLabel.text = String(" Mobile")
                mobileLabel.textAlignment = NSTextAlignment.Left
            })
            
            // mobile text field
            self.view.addSubview(mobileText)
            mobileText.snp_makeConstraints(closure: { (make) in
                make.top.equalTo(self.mobileLabel.snp_bottom).offset(10)
                make.height.equalTo(40)
                make.left.equalTo(self.view).offset(20)
                make.right.equalTo(-20)
                mobileText.placeholder = " Enter your mobile number"
                
            })

            // email label
            self.view.addSubview(emailLabel)
            emailLabel.snp_makeConstraints(closure: { (make) in
                make.top.equalTo(self.mobileText.snp_bottom).offset(10)
                make.height.equalTo(40)
                make.left.equalTo(self.view).offset(20)
                make.right.equalTo(-20)
                emailLabel.text = String(" Email")
                emailLabel.textAlignment = NSTextAlignment.Left
            })
            // email TextField
            self.view.addSubview(emailTextField)
            emailTextField.snp_makeConstraints(closure: { (make) in
                make.top.equalTo(self.emailLabel.snp_bottom).offset(10)
                make.height.equalTo(40)
                make.left.equalTo(self.view).offset(20)
                make.right.equalTo(-20)
                emailTextField.placeholder = " Please Enter Valid Email Id"
            })

            
            // for submit button
            self.view.addSubview(SignUpButton)
               SignUpButton.snp_makeConstraints(closure: { (make) in
                make.top.equalTo(self.emailTextField.snp_bottom).offset(10)
                make.height.equalTo(40)
                make.left.equalTo(self.view).offset(150)
                make.right.equalTo(-150)
                self.SignUpButton.setTitle(" Submit", forState: .Normal)
                self.SignUpButton.addTarget(self, action: #selector(ViewController.OnSignUPFuction(_:)), forControlEvents: .TouchUpInside)
            })

        }
        
        
    }
    func validate(m: String) -> Bool {
        
       // let PHONE_REGEX = "^\\d{3}-\\d{3}-\\d{4}$"    its true when user input same format
        let PHONE_REGEX = "^\\d{10}"
        
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", PHONE_REGEX)
        
        let result =  phoneTest.evaluateWithObject(m)
        
        return result
        
    }
    func isValidEmail(testStr:String) -> Bool {
        
        print("validate emilId: \(testStr)")
        
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        
        let result = emailTest.evaluateWithObject(testStr)
        
        return result
    }
   
    func OnSignUPFuction(sender: UIButton){
    self.navigationController?.pushViewController(SignUPViewController(), animated: true)
    print("Success")
        
          m = mobileText.text!
        // validation field
        if (NameText.text == ""){
            let alert = UIAlertController(title: "Blank", message: "Name Required! ", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
            alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Default, handler: {(action:UIAlertAction!) in print("")
            }))
            self.presentViewController(alert, animated: true, completion: nil)
        }else if(addressText.text == ""){
            let alert = UIAlertController(title: "Blank", message: "Address Required! ", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
            alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Default, handler: {(action:UIAlertAction!) in print("")
            }))
            self.presentViewController(alert, animated: true, completion: nil)
        
        
        }else if(mobileText.text == ""){
            let alert = UIAlertController(title: "Blank", message: "Mobile Required! ", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
            alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Default, handler: {(action:UIAlertAction!) in print("")
            }))
            self.presentViewController(alert, animated: true, completion: nil)
            
            
        }else if (validate(mobileText.text!)) == false  {
            print((validate(mobileText.text!)))
            let alert = UIAlertController(title: "Invalid Mobile", message: "Please Type Valid Mobile Number! ", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
            alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Default, handler: {(action:UIAlertAction!) in print("")
            }))
            self.presentViewController(alert, animated: true, completion: nil)
        }else if(emailTextField.text == ""){
            let alert = UIAlertController(title: "Blank", message: "Email Required! ", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
            alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Default, handler: {(action:UIAlertAction!) in print("")
            }))
            self.presentViewController(alert, animated: true, completion: nil)
            
            
        }else if (isValidEmail(emailTextField.text!)) == false{
            let alert = UIAlertController(title: "Invalid", message: "Please type valid Email! ", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
            alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Default, handler: {(action:UIAlertAction!) in print("")
            }))
            self.presentViewController(alert, animated: true, completion: nil)
        
        
        }else{
            let alert = UIAlertController(title: "Conguratulations!", message: "Successfully Login! ", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
            alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Default, handler: {(action:UIAlertAction!) in print("")
            }))
            self.presentViewController(alert, animated: true, completion: nil)

        }
        
        
        
        
    }
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

