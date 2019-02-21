//
//  ScannerViewController.swift
//  DigiPass
//
//  Created by sravan on 20/02/19.
//  Copyright © 2019 ecknologic. All rights reserved.
//

import UIKit

class ScannerViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK:- custom methods
    private func scanButtonTapped() {
        let qrVC = QRCodeScannerSDKViewController(delegate: self, vibrate: true, codeType: 1, use: UIImage(named: "QRScan_close.png"))
    }
}

extension ScannerViewController: QRCodeScannerSDKDelegate {
    func qrCodeScannerSDKController(_ controller: QRCodeScannerSDKViewController!, didScanResult result: String!, withCodeType codeType: Int32) {
        
    }
    
    func qrCodeScannerSDKControllerDidCancel(_ controller: QRCodeScannerSDKViewController!) {
        
    }
    
    func qrCodeScannerSDKController(_ controller: QRCodeScannerSDKViewController!, threwException exception: QRCodeScannerSDKException!) {
        
    }
}
