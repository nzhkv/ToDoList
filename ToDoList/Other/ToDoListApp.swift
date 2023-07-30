//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Nikolay Zhukov on 28.07.2023.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure() 
    }
    var body: some Scene {
        WindowGroup {
            MaimView()
        }
    }
}
