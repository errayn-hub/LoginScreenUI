//
//  ContentView.swift
//  LoginScreenUI
//
//  Created by ErRayn on 6.04.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var Username = ""
    @State private var Password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    @State private var selection: String? = nil

    
    var body: some View {
        
        VStack {
            NavigationView{
                ZStack{
                    Color.gray
                        .ignoresSafeArea()
                    Circle()
                        .scale(1.7)
                        .foregroundColor(.white.opacity(0.17))
                    Circle()
                        .scale(1.35)
                        .foregroundColor(.white)
                    
                    VStack{
                        Text("Login")
                            .font(.largeTitle)
                            .bold()
                            .padding()
                        TextField("User Name", text: $Username)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.black.opacity(0.05))
                            .cornerRadius(10)
                            .border(.red, width: CGFloat(wrongUsername))
                            .autocapitalization(.none)
                        
                        SecureField("Password", text: $Password)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.black.opacity(0.05))
                            .cornerRadius(10)
                            .border(.red, width: CGFloat(wrongPassword))
                            .autocapitalization(.none)
                        
                        NavigationLink(destination: LoginView(), tag: "A", selection: $selection) { EmptyView() }
                        
                        Button("Login") {
                            selection = "A"
                            authenticateUser(username: Username, password: Password)
                        }
                        .foregroundColor(.white)
                        .frame(width: 300, height: 50)
                        .background(Color.blue)
                        .cornerRadius(10)
                        
                        NavigationLink(destination: Text("you are logged in with @\(Username)"), isActive: $showingLoginScreen){
                            EmptyView()
                        }
                        
                    }
                    
                }
                .navigationBarHidden(true)
            }
        }
    }
        
        func authenticateUser(username: String, password: String){
            if Username.lowercased() == "errayn33" {
                wrongUsername = 0
                if Password.lowercased() == "errayn33"{
                    wrongPassword = 1
                    showingLoginScreen = true
                    
                } else {
                    wrongPassword = 2
                }
            } else {
                wrongUsername = 2
            }
        }
        
    }
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
        
    

