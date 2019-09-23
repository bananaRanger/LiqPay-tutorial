//
//  LiqPayManager.swift
//  LiqPay-tutorial
//
//  Created by Anton Yereshchenko on 9/23/19.
//

import Foundation

class LiqPayManager: NSObject {
    
    private let privatKey = "<privat_key>"
    private let publicKey = "<public_key>"
    
    private let navController: UINavigationController
    private let statusBarColor: UIColor
    
    private var paymentParameters: [AnyHashable : Any] {
        // test payment
        return [
            "action": "pay",
            "version": 3,
            "order_id": "43",
            "public_key": publicKey,
            "amount": 32000,
            "currency": "UAH",
            "description": "iPhone 11 Pro 64GB"
        ]
    }
    
    lazy var liqpayMob: LiqpayMob = {
        return LiqpayMob(liqPayWithDelegate: self)
    }()
    
    init(navController: UINavigationController,
         statusBarColor: UIColor) {
        self.navController = navController
        self.statusBarColor = statusBarColor
    }
    
    func pay() {
        liqpayMob.checkout(
            paymentParameters,
            privateKey: privatKey,
            delegate: self)
    }
    
}

extension LiqPayManager: LiqPayCallBack {
    func navigationController() -> UINavigationController! {
        return navController
    }
    
    func onResponseSuccess(_ response: String!) {
        print("response:", response ?? "-")
    }
    
    func onResponseError(_ errorCode: Error!) {
        print("error:", errorCode ?? "-")
    }
    
    func getStatusBarColor() -> UIColor! {
        return statusBarColor
    }
}
