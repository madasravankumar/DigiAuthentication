//
//  WelcomeViewController
//  DigiPass
//
//  Created by sravan on 20/02/19.
//  Copyright © 2019 ecknologic. All rights reserved.
//

import UIKit
import PinLayout

class WelcomeViewController: UIViewController {

    // MARK:- properties
    let topView = UIView()
    let contanerView = UIView()
    let welcomeLbl = UILabel()
    let lbl1 = UILabel()
    lazy var scanButton: UIButton = {
        let button = UIButton()
        button.setTitle("Scan", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.layer.cornerRadius = 4.0
        button.layer.borderColor = UIColor.gray.cgColor
        button.layer.borderWidth = 1.0
        button.layer.masksToBounds = true
        button.addTarget(self, action: #selector(scanTapped(_:)), for: .touchUpInside)
        return button
    }()
    
    // MARK:- view life cycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setup()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        layout()
    }
    
    // MARK:- custom methods
    private func setup() {
        topView.backgroundColor = UIColor(red: 41/255, green: 128/255, blue: 185/255, alpha: 1)
        
        welcomeLbl.text = "Welcome"
        welcomeLbl.font = UIFont.systemFont(ofSize: 30)
        
        lbl1.text = "Thank you for downloading the applicaiton for authentication powered by \r \r Get started and touch the button below to confirmm your finger print"
        lbl1.numberOfLines = 0
        lbl1.textAlignment = .center
        lbl1.font = UIFont.systemFont(ofSize: 20)
        
        view.addSubview(topView)
        view.addSubview(contanerView)
        contanerView.addSubview(welcomeLbl)
        contanerView.addSubview(lbl1)
        contanerView.addSubview(scanButton)
    }
    
    private func layout() {
        topView.pin.left().top().right().height(30%)
        contanerView.pin.below(of: topView, aligned: .left).height(70%).marginTop(0).right(0)
        welcomeLbl.pin.sizeToFit().topCenter(contanerView.bounds.height / 4)
        lbl1.pin.below(of: welcomeLbl).marginTop(20).left(10).right(10).sizeToFit(.width)
        scanButton.pin.below(of: lbl1, aligned: .center).width(120).height(30).marginTop(20)
    }
    
    @objc private func scanTapped(_ sender: Any) {
        let qrVC = QRCodeScannerSDKViewController(delegate: self, vibrate: true, codeType: 1 + 2, use: UIImage(named: "QRScan_close.png"), scannerOverlay: true, scannerOverlayColor: .clear)
        present(qrVC!, animated: true, completion: nil)
    }
}


extension WelcomeViewController: QRCodeScannerSDKDelegate {
    func qrCodeScannerSDKController(_ controller: QRCodeScannerSDKViewController!, didScanResult result: String!, withCodeType codeType: Int32) {
        print(result)
        controller.dismiss(animated: true, completion: nil)
    }
    
    func qrCodeScannerSDKControllerDidCancel(_ controller: QRCodeScannerSDKViewController!) {
        controller.dismiss(animated: true, completion: nil)
    }
    
    func qrCodeScannerSDKController(_ controller: QRCodeScannerSDKViewController!, threwException exception: QRCodeScannerSDKException!) {
        
    }
}

