//  ContentView.swift
//  UCRBay
//
import SwiftUI

struct ContentView: View {
    @EnvironmentObject var userAuth: UserAuth;
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Text("UCRBay")
                    .font(.largeTitle)
                    .padding(.bottom, 20)

                TextField("Username", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                Button("Login") {
                    userAuth.isLoggedIn = true
                }
                .padding()
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(10)

                NavigationLink(destination: RegistrationView()) {
                    Text("Create Account")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .foregroundColor(.black)
                        .padding()
                        .background(Color.yellow)
                        .cornerRadius(10)
                }
                .padding()
            }
            .padding()
            .navigationTitle("Login")
        }
    }
}