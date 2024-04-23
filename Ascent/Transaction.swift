//
//  Transaction.swift
//  Ascent
//
//  Created by Aiturgan Talant on 4/22/24.
//

import Foundation




// The Task model
struct Transaction: Codable, Equatable{
    
    var balance: Int
    var income: Int
    var expense: Int
    
    // The task's title
    var isExpense: Bool
    
    var isIncome: Bool
    
    var name: String

    // An optional note
    var note: String?

    // The date
    var date: Date

    // Initialize a new task
    // `note` and `dueDate` properties have default values provided if none are passed into the init by the caller.
    init(id: String, name: String, note: String? = nil, income: Int, expense: Int,  balance: Int, isIncome: Bool, isExpense: Bool, date: Date = Date()) {
        self.id = id
        self.balance = balance
        self.income = income
        self.name = name
        self.note = note
        self.expense = expense
        self.date = date
        self.isIncome = isIncome
        self.isExpense = isExpense
    }

 


    // The date the task was created
    // This property is set as the current date whenever the task is initially created.
    var createdDate: Date = Date()

    // An id (Universal Unique Identifier) used to identify a task.
    let id: String
}

// MARK: - Transaction + UserDefaults
extension Transaction {
    
    
    // Given an array of tasks, encodes them to data and saves to UserDefaults.
    static func save(_ transactions: [Transaction]) {
        
        // TODO: Save the array of tasks
        let defaults = UserDefaults.standard
        
        
        do{
            let encodedData = try JSONEncoder().encode(transactions)
            defaults.set(encodedData, forKey: "transactions")
        } catch{
            print("Error encoding tasks")
        }
    }
    
    // Retrieve an array of saved transactions  from UserDefaults.
    static func getTransactions() -> [Transaction] {
        
        let defaults = UserDefaults.standard
        
        
        if let data = defaults.data(forKey: "transactions") {
            // 3.
            let decodedTransactions = try! JSONDecoder().decode([Transaction].self, from: data)
            // 4.
            return decodedTransactions
        } else {
            // 5.
            return []
        }
        // 👈 replace with returned saved tasks
    }
    
    // Add a new task or update an existing task with the current task.
    func save() {
        var currentTransactions = Transaction.getTransactions()
        
        if let index = currentTransactions.firstIndex(where: {$0.id == self.id}){
            currentTransactions.remove(at: index)
            
            currentTransactions.insert(self, at: index)
        } else {
            currentTransactions.append(self)
        }
        Transaction.save(currentTransactions)
        
        
    }
}
