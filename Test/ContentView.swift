//
//  ContentView.swift
//  Test
//
//  Created by Andrew Davis on 3/28/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        
        ZStack {
            Color(red: 100/255, green: 130/255, blue: 200/255)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                Image("protocol1")
                Text("Welcome to the Pre-Alpha")
                    .foregroundColor(Color(red: 0/255, green: 0/255, blue: 0/255))
                    .font(.system(size: 15))
                    .multilineTextAlignment(.center)
                    .padding(.top, 5)
                Text("Sign In")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .padding(.top, 70)
                TextField("Username", text: $username)
                    .frame(width: 300, height: 45)
                    .background(Color(.white))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .font(Font.system(size: 16))
                    .multilineTextAlignment(.center)
                    .cornerRadius(22)
                TextField("Password", text: $password)
                    .frame(width: 300, height: 45)
                    .background(Color(.white))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .font(Font.system(size: 16))
                    .multilineTextAlignment(.center)
                    .cornerRadius(22)
                Button(action: {
                    print("User is logging in")
                }) {
                    Text("Sign In")
                        .padding(13)
                        .frame(width: 250, height: 45)
                        .foregroundColor(.white)
                        .background(Color(red: 102/255, green: 98/255, blue: 227/255))
                        .cornerRadius(22)
                        .font(.system(size: 15))
                }
                Button(action: {
                    print("Sign Up")
                }) {
                    Text("Sign In")
                        .foregroundColor(.white)
                        .padding(.top, 15)
                }
                Spacer()
                Text("If you sign in you will agree with our User Agreement")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 13))
            }
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
