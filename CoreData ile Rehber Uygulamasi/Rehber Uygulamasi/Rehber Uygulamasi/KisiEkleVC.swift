//
//  KisiEkleVC.swift
//  Rehber Uygulamasi
//
//  Created by Serhat  Şimşek  on 20.05.2023.
//

import UIKit

class KisiEkleVC: UIViewController {

    
    let context = appDelegate.persistentContainer.viewContext
    
    @IBOutlet weak var kisiAdTextField: UITextField!
    @IBOutlet weak var kisiTelTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func kisiEkleButton(_ sender: Any) {
        
        if let ad = kisiAdTextField.text, let tel = kisiTelTextField.text{
            let kisi = Kisiler(context:context)
            kisi.kisi_ad = ad
            kisi.kisi_tel = tel
            appDelegate.saveContext()
        }
        
    }
    
}
