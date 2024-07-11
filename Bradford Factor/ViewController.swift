//
//  ViewController.swift
//  Bradford Factor
//
//  Created by Muhamed Alkhatib on 21/08/2020.
//

import UIKit

class ViewController: UIViewController {
    var  s=0
    var t=0
    var cal=0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func ssp(_ sender: UIStepper) {
        
        nsp.text=String(Int(sender.value))
        s=Int(sender.value)
    }
    @IBAction func tsp(_ sender: UIStepper) {
        ntp.text=String(Int(sender.value))
        t=Int(sender.value)
    }
    
    @IBOutlet weak var nsp: UILabel!
    
    @IBOutlet weak var ntp: UILabel!
  
    
    @IBAction func calc(_ sender: UIButton) {
       cal=s*s*t
        res.text=String(cal)
        performSegue(withIdentifier: "gotop", sender: self)
    }
    
    @IBOutlet weak var res: UILabel!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let recvv = segue.destination as! ResController
        recvv.bres=self.cal
    }
    
    
    
    
    
}

