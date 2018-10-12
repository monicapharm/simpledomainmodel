//
//  main.swift
//  SimpleDomainModel
//
//  Created by Ted Neward on 4/6/16.
//  Copyright © 2016 Ted Neward. All rights reserved.
//

import Foundation

print("Hello, World!")

public func testMe() -> String {
  return "I have been tested"
}

open class TestMe {
  open func Please() -> String {
    return "I have been tested"
  }
}

////////////////////////////////////
// Money
//
public struct Money {
  public var amount : Int
  public var currency : String
  
  public func convert(_ to: String) -> Money {
    let exchangeRates = [
        "USD": 1,
        "GBP": 0.5,
        "EUR": 1.5,
        "CAN": 1.25
    ]
    let rate = exchangeRates[to]! / exchangeRates[currency]!
    let newAmount = Int(Double(amount) * rate)
    let newCurrency = to
    return Money(amount: newAmount, currency: newCurrency)
  }
  
  public func add(_ to: Money) -> Money {
    var money: Money = self.convert(to.currency)
    money.amount += to.amount
    return money
  }
  public func subtract(_ from: Money) -> Money {
    var money: Money = self.convert(from.currency)
    money.amount -= from.amount
    return money
  }
}

////////////////////////////////////
// Job
//
open class Job {
  fileprivate var title : String
  fileprivate var type : JobType

  public enum JobType {
    case Hourly(Double)
    case Salary(Int)
  }
  
  public init(title : String, type : JobType) {
    self.title = title
    self.type = type
  }
  
  open func calculateIncome(_ hours: Int) -> Int {
    switch self.type {
    case .Hourly(let hourlySal):
        return Int(Double(hours) * hourlySal)
    case .Salary(let yearlySal):
        return yearlySal
    }
  }
  
  open func raise(_ amt : Double) {
    switch self.type {
    case .Hourly(let hourlySal):
        self.type = .Hourly(Double(hourlySal) + amt)
    case .Salary(let yearlySal):
        self.type = .Salary(yearlySal + Int(amt))
    }
  }
}

/*
////////////////////////////////////
// Person
//
open class Person {
  open var firstName : String = ""
  open var lastName : String = ""
  open var age : Int = 0

  fileprivate var _job : Job? = nil
  open var job : Job? {
    get { }
    set(value) {
    }
  }
  
  fileprivate var _spouse : Person? = nil
  open var spouse : Person? {
    get { }
    set(value) {
    }
  }
  
  public init(firstName : String, lastName: String, age : Int) {
    self.firstName = firstName
    self.lastName = lastName
    self.age = age
  }
  
  open func toString() -> String {
  }
}

////////////////////////////////////
// Family
//
open class Family {
  fileprivate var members : [Person] = []
  
  public init(spouse1: Person, spouse2: Person) {
  }
  
  open func haveChild(_ child: Person) -> Bool {
  }
  
  open func householdIncome() -> Int {
  }
}
 */





