import UIKit

//We are going to create a bank account that will help us to make a transfer between two people's account:


class BankAccount {
    //here are our major properties!
    var accountName :  String
    var currentBalance: Double
    var routingNumber : Int

    
    init(){
    accountName = ""
    currentBalance = 0.0
    routingNumber = 0
    }
    
    // make sure that the property is listed first or it will not store
    func setAccountName(userName: String){
        accountName = userName
    }
    
    // our withdrawal function here. We need to change the deposit into a Double because we are working with a double with currentBalance
    
    func makeWithdrawal(withdrawalAmount : Int){
        currentBalance = currentBalance - Double(withdrawalAmount)
    }
    
    
    // our deposit function here. We need to change the deposit into a Double because we are working with a double with currentBalance
    
    func makeDeposit(depositAmount : Int) {
        currentBalance = currentBalance + Double(depositAmount)
    }
    
    func setRoutingNumber(userRoutingNumber : Int){
        routingNumber = userRoutingNumber
    }
    
    //We are going to create an object within a function that will help us when we work with Aviatrix tomorrow! We are going to keep breaking this code down until we understand it.
    
    func accountTransfer(sender: BankAccount, recepient: BankAccount, transferAmount: Double, recepientRoutingNumber:Int) {
        if recepient.routingNumber == recepientRoutingNumber {
        sender.currentBalance = sender.currentBalance - transferAmount
        recepient.currentBalance = recepient.currentBalance + transferAmount
            print("The recepient has sucessfully received your transfer!")
        } else {
            print("I'm sorry, the routing numbers did not match. Please try a different routing number!")
        }
    }
    
    func checkEverything(){
        print(accountName)
        print(currentBalance)
        print(routingNumber)
    }
    // We want to make sure we have everything in there
 
    }


var joansBankAccount = BankAccount()
var megansBankAccount = BankAccount()
joansBankAccount.setRoutingNumber(userRoutingNumber: 324)
megansBankAccount.setAccountName(userName:"Megan's Account")
megansBankAccount.setRoutingNumber(userRoutingNumber: 12222222)
megansBankAccount.makeDeposit(depositAmount: 120)
megansBankAccount.checkEverything()

megansBankAccount.accountTransfer(sender:megansBankAccount, recepient: joansBankAccount, transferAmount: 11.00, recepientRoutingNumber: 324)

joansBankAccount.checkEverything()
