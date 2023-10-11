//
//  ViewController.swift
//  class2v2
//
//  Created by Spencer Johnson on 9/27/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collage: UIImageView!
    
    @IBOutlet weak var info_but: UIButton!
    
    
    var image = UIImage(named: "backy")
    let image2 = UIImage(named: "howe")
    let image3 = UIImage(named: "mathews")
    let image4 = UIImage(named: "Things")
    let image5 = UIImage(named: "yzerplan")
    
    
    
    var curr = "backy"
    let names = ["backy", "howe", "mathews", "Things", "yzerplan"]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
            collage.image = image
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.imageTapped(gesture:)))

                // add it to the image view;
                collage.addGestureRecognizer(tapGesture)
                // make sure imageView can be interacted with by user
                collage.isUserInteractionEnabled = true
            }

            @objc func imageTapped(gesture: UIGestureRecognizer) {
                // if the tapped view is a UIImageView then set it to imageview
                if (gesture.view as? UIImageView) != nil {
                    print("Image Tapped")
                    
                    var rand = names.randomElement() ?? "backy"
                    
                    curr = rand
                    
                    collage.image = UIImage(named: curr)
                    
                

                }
            }

    @IBAction func info_but(_ sender: Any) {
    }
    
    
}

