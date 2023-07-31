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
                    if let user = viewModel.user {
                        profile(user: user)
                    } else {
                        Text("Loadinf profile ...")
                    }
                    
                    // sign out
                    GeometryReader { geometry in
                        Button("Log Out") {
                            viewModel.logOut()
                        }
                        .tint(.red)
                        .position(x: geometry.size.width / 2)
                        .padding()
                    }
                    
                    Spacer()
                    }
            }
            .navigationTitle("Profile")
        }
        .onAppear {
            viewModel.fetchUser()
        }
    }
    
    @ViewBuilder
    func profile(user: User) -> some View {
        HStack {
            Text("Name: ")
                .bold()
            Text(user.name)
        }
        .padding()
        
        HStack {
            Text("Email: ")
                .bold()
            Text(user.email)
        }
        .padding()
        
        HStack {
            Text("Member since: ")
                .bold()
            Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))")
        }
        .padding()
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
