//
//  KisiGuncelleVC.swift
//  Rehber Uygulamasi
//
//  Created by Serhat  Şimşek  on 20.05.2023.
//

import UIKit

class KisiGuncelleVC: UIViewController {

    @IBOutlet weak var kisiAdı: UITextField!
    @IBOutlet weak var kisiTel: UITextField!
    
    let context = appDelegate.persistentContainer.viewContext
    var kisi:Kisiler?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let k = kisi {
            
            kisiAdı.text = k.kisi_ad
            kisiTel.text = k.kisi_tel
            
        }
    }
    
    @IBAction func kisiGuncelle(_ sender: Any) {
        if let k = kisi, let ad = kisiAdı.text, let tel = kisiTel.text {
            kisi?.kisi_ad = ad
            kisi?.kisi_tel = tel
            
            appDelegate.saveContext()
        }
    }
    
}
