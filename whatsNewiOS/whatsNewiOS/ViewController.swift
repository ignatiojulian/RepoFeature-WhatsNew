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
        
        // Initialize default Configuration
        var configuration = WhatsNewViewController.Configuration()
        
        // Customize Configuration to your needs
        /// Setup Custom Theme
        // configuration.backgroundColor = .white
        // configuration.titleView.titleColor = .orange
        // configuration.itemsView.titleFont = .systemFont(ofSize: 17)
        // configuration.detailButton?.titleColor = .orange
        // configuration.completionButton.backgroundColor = .orange
        configuration.apply(theme: .darkBlue)
        
        /// Setup Custom Completion Button
        configuration.completionButton.title = "Selanjutnya"
        
        /// Setup Custom Layout & Animation
        configuration.itemsView.layout = .centered
        configuration.itemsView.animation = .slideRight
        
        
        let items = WhatsNew(title: "Hai, Apa yang terbaru dari Aplikasi BBA",
                             items: [
                                WhatsNew.Item(title: "Fitur Favorite", subtitle: "Sekarang kamu bisa bertransaksi dari fitur favorit", image: UIImage(systemName: "heart.text.square.fill")),
                                WhatsNew.Item(title: "QRIS", subtitle: "Sekarang QRIS sudah support di Mobile Banking BBA lho", image: UIImage(systemName: "camera.circle"))
                             ]
        )
        
        /*
         Standard theme is .red
         */
        guard let whatsNewViewController = WhatsNewViewController(whatsNew: items, configuration: configuration, versionStore: KeyValueWhatsNewVersionStore()) else { return }
        present(whatsNewViewController, animated: true, completion: nil)
    }
    
}

