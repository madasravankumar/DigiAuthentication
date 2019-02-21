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

    let topView = UIView()
    let contanerView = UIView()
    let welcomeLbl = UILabel()
    let lbl1 = UILabel()
    
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
    }
    
    private func layout() {
        topView.pin.left().top().right().height(30%)
        contanerView.pin.below(of: topView, aligned: .left).height(70%).marginTop(0).right(0)
        welcomeLbl.pin.sizeToFit().topCenter(contanerView.bounds.height / 4)
        print(contanerView.bounds.height / 4)
        lbl1.pin.below(of: welcomeLbl).marginTop(20).left(10).right(10).sizeToFit(.width)
    }
}

