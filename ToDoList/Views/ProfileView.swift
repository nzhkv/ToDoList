//
//  ProfileView.swift
//  ToDoList
//
//  Created by Nikolay Zhukov on 30.07.2023.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // avatar
                Image(systemName: "person.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color.blue)
                    .frame(width: 125, height: 125)
                    .padding()
                
                // info
                VStack(alignment: .leading) {
                    HStack {
                        Text("Name: ")
                            .bold()
                        Text("Nikolay Zhukov")
                    }
                    .padding()
                    
                    HStack {
                        Text("Email: ")
                            .bold()
                        Text("Nikolay Zhukov")
                    }
                    .padding()
                    
                    HStack {
                        Text("Member since: ")
                            .bold()
                        Text("Nikolay Zhukov")
                    }
                    .padding()
                }
                .padding()
                
                // sign out
                Button("Log Out") {
                    viewModel.logOut()
                }
                .tint(.red)
                .padding()
                
                Spacer()
            }
            .navigationTitle("Profile")
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
