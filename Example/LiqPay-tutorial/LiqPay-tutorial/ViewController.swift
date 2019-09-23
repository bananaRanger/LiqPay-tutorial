//
//  ViewController.swift
//  LiqPay-tutorial
//
//  Created by Anton Yereshchenko on 9/23/19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnPay: UIButton!
    
    private var liqpayManager: LiqPayManager?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnPay.layer.cornerRadius = btnPay.bounds.height / 2
        guard let navigationController = navigationController else { return }
        liqpayManager = LiqPayManager(
            navController: navigationController,
            statusBarColor: .black)
    }

    @IBAction func btnPayTouchUpInside(_ sender: Any) {
        liqpayManager?.pay()
    }
    
}

