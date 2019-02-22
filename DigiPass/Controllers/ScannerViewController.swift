//
//  ScannerViewController.swift
//  DigiPass
//
//  Created by sravan on 20/02/19.
//  Copyright © 2019 ecknologic. All rights reserved.
//

import UIKit

class ScannerViewController: UIViewController {
    

    override func loadView() {
        super.loadView()
        view = ScannerView()
        view.backgroundColor = .gray
    }
    
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
        
    }
}


class ScannerView: UIView {
    
    let rootView = UIView()
    
    // MARK:- intilizers
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    convenience init() {
        self.init(frame: .zero)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layout()
    }
    
    // MARK:- custom methods
    private func setup() {
        
        addSubview(rootView)
    }
    
    private func layout() {
        rootView.pin.left().right().top().bottom()
    }
}
