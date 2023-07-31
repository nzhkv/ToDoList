//
//  ProfileViewViewModel.swift
//  ToDoList
//
//  Created by Nikolay Zhukov on 30.07.2023.
//

import FirebaseAuth
import FirebaseFirestore
import Foundation

class ProfileViewViewModel: ObservableObject {
    init() {}
    
    @Published var user: User? = nil
    
    func logOut() {
        
    }
}
