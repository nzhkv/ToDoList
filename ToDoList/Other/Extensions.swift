//
//  Extensions.swift
//  ToDoList
//
//  Created by Nikolay Zhukov on 30.07.2023.
//

import Foundation

extension Encodable {
    func asDictonary() -> [String:Any] {
        guard let data = try? JSONEncoder().encode(self) else { return [:] }
        
        do {
            let json = try JSONSerialization.jsonObject(with: data) as? [String:Any]
            return json ?? [:]
        } catch {
            return [:]
        }
    }
}
