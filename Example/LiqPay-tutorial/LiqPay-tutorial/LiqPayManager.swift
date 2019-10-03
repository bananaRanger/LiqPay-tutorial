// MIT License
//
// Copyright (c) 2019 Anton Yereshchenko
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

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
