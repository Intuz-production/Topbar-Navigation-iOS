//
//  DetailsViewController.swift
//  Topbar-Navigation-iOS
//
//  Created by Bharat Jadav on 25/08/20.
//  Copyright © 2020 Bharat Jadav. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    // MARK: - Variables
    var topbarView  : TopBarView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        self.setTopBarNaviagtion()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Set Top Bar
    private func setTopBarNaviagtion() -> Void {
        topbarView = TopBarView(title: "Details", leftOptionImages: ["ic_back"], rightOptionImages: [], showGradiantLayer: true)
        topbarView.titleAlignment = .center
        topbarView.leftOptionDidTapped = { (barItem: UIButton) -> Void in
            self.navigationController?.popViewController()
        }
        topbarView.rightOptionDidTapped = { (barItem: UIButton) -> Void in
            
        }
        self.view.addSubview(topbarView)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
