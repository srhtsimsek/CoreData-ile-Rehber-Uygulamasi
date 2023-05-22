//
//  KisiDetayVC.swift
//  Rehber Uygulamasi
//
//  Created by Serhat  Şimşek  on 20.05.2023.
//

import UIKit

class KisiDetayVC: UIViewController {

    @IBOutlet weak var kisiDetayLabel: UILabel!
    @IBOutlet weak var kisiTelLabel: UILabel!
    
    var kisi:Kisiler?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let k = kisi {
            
            kisiDetayLabel.text = k.kisi_ad
            kisiTelLabel.text = k.kisi_tel
            
        }
        // Do any additional setup after loading the view.
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
