//
//  TransactionsViewController.swift
//  Ascent
//
//  Created by Aiturgan Talant on 4/22/24.
//

import UIKit

class TransactionsViewController: UIViewController {
    @IBOutlet weak var AddTransactionBtn: UIButton!
    
    @IBAction func DidTapAddBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "NewTransactionID", sender: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        AddTransactionBtn.layer.cornerRadius = 20
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
