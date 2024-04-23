//
//  ViewController.swift
//  Ascent
//
//  Created by Aiturgan Talant on 4/21/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    
    
    @IBOutlet weak var IncomeTableView: UITableView!
    @IBOutlet weak var AddTransactionBtn: UIButton!
    
    @IBOutlet weak var BalanceLabel: UILabel!
    
    @IBOutlet weak var IncomeLabel: UILabel!
    
    @IBOutlet weak var ExpenseLabel: UILabel!
    
    var transactions  = [Transaction]()
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       // let cell = tableView.dequeueReusableCell(withIdentifier: "TransactionCell", for: indexPath) as! TransactionCell
        
        //let transaction = transactions[indexPath.row]
        
       // cell.textLabel?.text = transaction.name

       //  cell.typeLabel = (transaction.isIncome ? "Income" : "Expense")
        
        let cell = UITableViewCell()

       
            cell.textLabel?.text = "Bus Ticket"

        
           return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        IncomeTableView.dataSource = self
       
        // Do any additional setup after loading the view.
        AddTransactionBtn.layer.cornerRadius = 20
        refreshTransactions()
    }


    
    private func refreshTransactions() {
            // 1.
        let transactions = Transaction.getTransactions()
            // 3.
            self.transactions = transactions
        
            // 4.
        // BalanceLabel.text = "\(balance) $"
       //  IncomeLabel.text = "\(income) $"
        
        }
    }
    
    



