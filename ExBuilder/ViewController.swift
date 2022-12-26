//
//  ViewController.swift
//  ExBuilder
//
//  Created by 김종권 on 2022/12/26.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 빌더 패턴 적용 전
//        let person = Person(id: "id", name: "jake", age: 0, location: "location")
        
        // 빌더 패턴 적용 후
        let person = Person(builder: PersonBuilder())
        person.id = "1"
    }
}

// builder pattern 적용 전
//class Person {
//    var id: String
//    var name: String
//    var age: Int
//    var location: String
//
//    init(id: String, name: String, age: Int, location: String) {
//        self.id = id
//        self.name = name
//        self.age = age
//        self.location = location
//    }
//}

protocol PersonBuilderType {
    var id: String { get }
    var name: String { get }
    var age: Int { get }
    var location: String { get }
}

struct PersonBuilder: PersonBuilderType {
    var id = "id"
    var name = "jake"
    var age = 0
    var location = "location"
}

class Person {
    var id: String
    var name: String
    var age: Int
    var location: String
    
    init(builder: PersonBuilderType) {
        id = builder.id
        name = builder.name
        age = builder.age
        location = builder.location
    }
}
