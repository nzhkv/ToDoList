//
//  ContentView.swift
//  ToDoList
//
//  Created by Nikolay Zhukov on 28.07.2023.
//

import SwiftUI

struct MaimView: View {
    var body: some View {
        NavigationView {
            LoginView()
        }
//        .padding()
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MaimView()
    }
}
