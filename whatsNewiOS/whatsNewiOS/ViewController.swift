//
//  ViewController.swift
//  whatsNewiOS
//
//  Created by Ignatio Julian on 03/10/21.
//

import UIKit
import WhatsNewKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let items = WhatsNew(title: "Hai, What's New in this App!",
                             items: [
                                WhatsNew.Item(title: "Add Favorite", subtitle: "Now you can add favorite into your contact", image: UIImage(systemName: "heart.text.square.fill")),
                                WhatsNew.Item(title: "Camera", subtitle: "Cheer's there a camera", image: UIImage(systemName: "camera.circle"))
                             ]
        )
        
        /*
         Standard theme is .red
        */
        guard let VC = WhatsNewViewController(whatsNew: items, theme: .darkBlue, versionStore: KeyValueWhatsNewVersionStore()) else { return }
        present(VC, animated: true, completion: nil)
    }
    
}

