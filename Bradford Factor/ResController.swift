//
//  ResController.swift
//  Bradford Factor
//
//  Created by Yahya Emad on 15/06/2024.
//

import UIKit

class ResController: UIViewController {
    var bres: Int=0
    var tk: String=""
    override func viewDidLoad() {
        super.viewDidLoad()

        bdc.text=String(bres)
        switch bres {
        case 0...25:
            tk="No problem"
            view.backgroundColor = #colorLiteral(red: 0.7834308743, green: 0.9097595811, blue: 0.7245814204, alpha: 1)
            
        case 26...100:
            tk="Employee needs attention"
            view.backgroundColor = #colorLiteral(red: 1, green: 0.9796168208, blue: 0.6882863641, alpha: 1)
            
        case 101...500:
            tk="Employee needs punishment"
            view.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
            
        case 501...:
            tk="Employee needs hard punishment"
            view.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
            
            
        default:
            tk=""
        }
        
        adv.text=tk

            }
@IBOutlet weak var bdc: UILabel!
    
    @IBOutlet weak var adv: UILabel!
    
    @IBAction func cag(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)

    }

    }


