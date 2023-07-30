//
//  ContentView.swift
//  ToDoList
//
//  Created by Nikolay Zhukov on 28.07.2023.
//

import SwiftUI

struct MaimView: View {
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            ToDoListView()
        } else {
            LoginView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MaimView()
    }
}
