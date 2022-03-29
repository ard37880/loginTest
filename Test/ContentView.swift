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
    @State var server: String = ""
    
    var body: some View {
        
        ZStack {
            Color(red: 233/255, green:233/255, blue: 233/255)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                Image("protocol1")
                    .padding(.top, 30)
                Text("Welcome to the Alpha")
                    .foregroundColor(Color(red: 0/255, green: 0/255, blue: 0/255))
                    .font(.system(size: 15))
                    .multilineTextAlignment(.center)
                    .padding(.top, 0)
                Text("Sign In")
                    .foregroundColor(.black)
                    .font(.system(size: 25))
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .padding(.top, 0)
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
                TextField("Server", text: $server)
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
                        .background(Color(red: 179/255, green: 0/255, blue: 30/255))
                        .cornerRadius(22)
                        .font(.system(size: 15))
                    
                }
                Spacer()
            }
        }
            }
        }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeRight)
    }
}
