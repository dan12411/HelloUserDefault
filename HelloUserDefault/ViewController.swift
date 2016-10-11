//
//  ViewController.swift
//  HelloUserDefault
//
//  Created by 洪德晟 on 2016/10/7.
//  Copyright © 2016年 洪德晟. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 1. Generate a Array
    //    var toDo = ["buy milk", "iOS test", "sleep", "make money"]
    
    //////////////////////////////////////
    /// 如果怕拼錯Key 用static 變數!!!!!! ///
    static let myKey = "todo"          ///
    //////////////////////////////////////
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 2. Save Array Data
        //        UserDefaults.standard.set(toDo, forKey: "todo")
        
        //        UserDefaults.standard.synchronize()
        
        // 3. Get Array Data
        if let loadedToDo = UserDefaults.standard.object(forKey: "todo") as? [String] {
            print(loadedToDo)
            
        }
        
        /// 如果資料是數字，也可以這樣做
        UserDefaults.standard.set(87, forKey: "yeah")
        UserDefaults.standard.synchronize()
        
        UserDefaults.standard.integer(forKey: "yeah")
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
}

