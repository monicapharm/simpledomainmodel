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
    switch self.currency {
        case "USD":
            switch to {
                case "USD":
                    return self
                case "GBP":
                    return Money(amount: Int(self.amount/2), currency: "GBP")
                case "EUR":
                    return Money(amount: Int(self.amount/2*3), currency: "EUR")
                case "CAN":
                    return Money(amount: Int(self.amount/4*5), currency: "CAN")
                default:
                    break
            }
        case "GBP":
            switch to {
                case "GBP":
                    return self
                case "EUR":
                    return Money(amount: Int(self.amount*3), currency: "EUR")
                case "CAN":
                    return Money(amount: Int(self.amount/2*5), currency: "CAN")
                case "USD":
                    return Money(amount: Int(self.amount*2), currency: "USD")
                default:
                    break
            }
        case "EUR":
            switch to {
                case "EUR":
                    return self
                case "GBP":
                    return Money(amount: Int(self.amount/3), currency: "GBP")
                case "CAN":
                    return Money(amount: Int(self.amount/6*5), currency: "CAN")
                case "USD":
                    return Money(amount: Int(self.amount/3*2), currency: "USD")
                default:
                    break
            }
        case "CAN":
            switch to {
                case "CAN":
                    return self
                case "GBP":
                    return Money(amount: Int(self.amount/5*2), currency: "GBP")
                case "EUR":
                    return Money(amount: Int(self.amount/5*6), currency: "EUR")
                case "USD":
                    return Money(amount: Int(self.amount/5*4), currency: "USD")
                default:
                    break
            }
        default: break
    }
        print("invalid currency type")
        return self
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
/*
open class Job {
  fileprivate var title : String
  fileprivate var type : JobType

  public enum JobType {
    case Hourly(Double)
    case Salary(Int)
  }
  
  public init(title : String, type : JobType) {
  }
  
  open func calculateIncome(_ hours: Int) -> Int {
  }
  
  open func raise(_ amt : Double) {
  }
}

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





