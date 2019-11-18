//
//  ViewController.swift
//  HsbcAhmedAlaloul
//
//  Created by Ahmed Alaloul on 11/18/19.
//  Copyright © 2019 AhmedAlaloul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lbl_FirstName:UILabel!
    @IBOutlet weak var lbl_LirstName:UILabel!
    @IBOutlet weak var lbl_Address:UILabel!
    @IBOutlet weak var lbl_Phone:UILabel!
    @IBOutlet weak var lbl_Position:UILabel!
    var data:ProfileOB!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loadData()
    }
    private func loadData() {
           let componnetsPrivate = URLComponents(string: "https://gist.githubusercontent.com/AhmedAlaloul93/a6a52a264c338d7a8d213442dc4f1d07/raw/ff870fe4c25568ab689fd49988ac83ec430ae0c7/aa.json")
           guard let urlPriv = componnetsPrivate?.url else {return}
           var requestPriv = URLRequest(url: urlPriv)

           
           let taskPriv = URLSession.shared.dataTask(with: requestPriv) { (data, response, error) in
               guard let data = data else {return}
               let json = try? JSONSerialization.jsonObject(with: data, options: [])
               if let myInfo = ProfileOB(dictionary: json as! Dictionary<String, Any>) {
                self.data = myInfo
                 DispatchQueue.main.async { // Correct
                      self.updateUI()
                     
                  }
                
               }

              
           }
           taskPriv.resume()
           //myTable.reloadData()
       }
    func updateUI(){
        self.lbl_FirstName.text = data.firstName
        self.lbl_LirstName.text = data.lastName
        self.lbl_Address.text = data.address
        self.lbl_Phone.text = data.phoneNumber
        self.lbl_Position.text = data.position
    }

}

