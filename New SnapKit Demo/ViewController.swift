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

class ViewController: UIViewController {
    lazy var box = UIView()
    var labal1 = UILabel()
    var namleLable = UILabel()
    var NameText = UITextField()
    var addressLabel = UILabel()
    var addressText = UITextField()
    var mobileLabel = UILabel()
    var mobileText = UITextField()
    var SignUpButton = UIButton()
   

    override func viewDidLoad() {
        
        super.viewDidLoad()
        box.backgroundColor = UIColor.orangeColor()
        labal1.backgroundColor = UIColor.lightGrayColor()
        namleLable.backgroundColor = UIColor.whiteColor()
        NameText .backgroundColor = UIColor.whiteColor()
        addressLabel.backgroundColor = UIColor.whiteColor()
        addressText .backgroundColor = UIColor.whiteColor()
        SignUpButton.backgroundColor = UIColor.lightGrayColor()
        mobileLabel.backgroundColor = UIColor.whiteColor()
        mobileText.backgroundColor = UIColor.whiteColor()
        

        
        
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
                labal1.text = String(" Registration Form");
                labal1.textAlignment = NSTextAlignment.Center
            
            })
            
            
            // for name lable only
            self.view.addSubview(namleLable)
            namleLable.snp_makeConstraints(closure: { (make) in
                make.top.equalTo(self.labal1.snp_bottom).offset(10)
                make.height.equalTo(40)
                make.left.equalTo(self.view).offset(20)
                make.right.equalTo(self.view).offset(-20)
                namleLable.text = String(" Name:")
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
                addressLabel.text = String(" Address:")
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
                mobileLabel.text = String(" Mobile:")
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


            
            
            
            // for submit button
            self.view.addSubview(SignUpButton)
               SignUpButton.snp_makeConstraints(closure: { (make) in
                make.top.equalTo(self.mobileText.snp_bottom).offset(10)
                make.height.equalTo(40)
                make.left.equalTo(self.view).offset(150)
                make.right.equalTo(-150)
                self.SignUpButton.setTitle(" Submit", forState: .Normal)
                self.SignUpButton.addTarget(self, action: #selector(ViewController.OnSignUPFuction(_:)), forControlEvents: .TouchUpInside)
            })

        }
        
        
    }
   
  
   
    func OnSignUPFuction(sender: UIButton){
    self.navigationController?.pushViewController(SignUPViewController(), animated: true)
    print("Success")
    // validation field
        if (NameText.text == ""){
            let alert = UIAlertController(title: "Invalid", message: "Name Required! ", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
            alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Default, handler: {(action:UIAlertAction!) in print("")
            }))
            self.presentViewController(alert, animated: true, completion: nil)
        }else if(addressText.text == ""){
            let alert = UIAlertController(title: "Invalid", message: "Address Required! ", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
            alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Default, handler: {(action:UIAlertAction!) in print("")
            }))
            self.presentViewController(alert, animated: true, completion: nil)
        
        
        }else if(mobileText.text == ""){
            let alert = UIAlertController(title: "Invalid", message: "Mobile Required! ", preferredStyle: UIAlertControllerStyle.Alert)
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

