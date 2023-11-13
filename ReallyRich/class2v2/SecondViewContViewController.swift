//
//  SecondViewContViewController.swift
//  class2v2
//
//  Created by Spencer Johnson on 9/27/23.
//

import UIKit

class SecondViewContViewController: UIViewController {


    
    @IBOutlet weak var images: UIImageView!
    @IBOutlet weak var but_goback: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
    }
    
    @IBAction func touch_GB(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
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
