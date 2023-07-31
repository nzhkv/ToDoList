//
//  NewItemViewViewModel.swift
//  ToDoList
//
//  Created by Nikolay Zhukov on 30.07.2023.
//

import Foundation

class NewItemViewViewModel: ObservableObject {
    @Published var title = ""
    @Published var dueDate = Date()
    
    init() {}
    
    func save() {
        
    }
}
