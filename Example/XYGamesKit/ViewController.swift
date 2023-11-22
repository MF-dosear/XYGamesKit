//
//  ViewController.swift
//  XYGamesKit
//
//  Created by 564057354@qq.com on 11/22/2023.
//  Copyright (c) 2023 564057354@qq.com. All rights reserved.
//

import UIKit
import XYGamesKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        let vc = YXManager.createViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

