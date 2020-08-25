//
//  ViewController.swift
//  Topbar-Navigation-iOS
//
//  Created by Bharat Jadav on 25/08/20.
//  Copyright © 2020 Bharat Jadav. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Variables
    var topbarView  : TopBarView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        self.setTopBarNaviagtion()
    }


    // MARK: - Set Top Bar
    private func setTopBarNaviagtion() -> Void {
        topbarView = TopBarView(title: "Dashboard", leftOptionImages: [], rightOptionImages: ["ic_nav_bell"], showGradiantLayer: true)
        topbarView.titleAlignment = .center
        topbarView.leftOptionDidTapped = { (barItem: UIButton) -> Void in
            
        }
        topbarView.rightOptionDidTapped = { (barItem: UIButton) -> Void in
            let Main     = UIStoryboard(name: "Main", bundle: nil)
            guard let ObjVC = Main.instantiateVC(DetailsViewController.self) else { return }
            self.navigationController?.pushViewController(ObjVC, animated: true)
        }
        self.view.addSubview(topbarView)
    }
}

