//
//  SignIn.swift
//  Pets Land
//
//  Created by Atheer on 24/05/1444 AH.
//

import SwiftUI

struct SignIn: View {
    var body: some View {
        NavigationView(){
            
            VStack {
                Image("Logo")
                    .resizable()
                    .frame(width:144, height:144)
                    .offset(x:-20,y: -50)
                
                VStack{
                    Text("Email")
                        .frame(width: 360,alignment: .leading)
                        .foregroundColor(.black)
                        .font(.system(size: 16))
                        .padding(.vertical,0)
                        .offset(x:-4,y:10)
                    HStack {
                        Image(systemName: "envelope")
                            .foregroundColor(Color(red: 0.392, green: 0.646, blue: 0.463))
                        TextField("", text: .constant("email@example.com")).foregroundColor(Color.gray)
                            .frame(width:320, height:27)
                    }
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 11).stroke(lineWidth: 1)
                        .foregroundColor(Color(red: 0.392, green: 0.646, blue: 0.463))
                        .frame(width:366, height:44))
                }
                Divider()
                    .overlay(.white)
                    .opacity(0.2)
                VStack{
                    Text("Password")
                        .frame(width: 360,alignment: .leading)
                        .foregroundColor(.black)
                        .font(.system(size: 16))
                        .padding(.vertical,0)
                        .offset(x:-4,y:19)
                    HStack {
                        Image(systemName: "lock")
                            .foregroundColor(Color(red: 0.392, green: 0.646, blue: 0.463))
                            .offset(x:30,y:1)
                        
                        TextField("", text: .constant("........."))
                            .foregroundColor(Color.gray)
                            .offset(x:30,y:1)
                            .font(.system(size: 36))
                            .bold()
                            .offset(x:-4,y:-8)
                            .frame(width:320, height:27)
                        Image(systemName: "eye.fill")
                            .offset(x:-17,y:2)
                            .padding()
                            .foregroundColor(Color(red: 0.392, green: 0.646, blue: 0.463))
                    }
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 11).stroke(lineWidth: 1)
                        .foregroundColor(Color(red: 0.392, green: 0.646, blue: 0.463))
                        .frame(width:366, height:44))
                }
                HStack{
                    Button{
                        
                        
                    }label: {
                        Image(systemName: "checkmark.circle.fill")
                            .foregroundColor(Color(red: 0.392, green: 0.646, blue: 0.463))
                        Text("Remember Me")
                            .foregroundColor(Color.gray)
                            .offset(y:-1)
                            .font(.system(size: 12))
                        
                    }
                    Text("Forgot Password?")
                        .foregroundColor(Color(red: 0.392, green: 0.646, blue: 0.463))
                        .offset(y:-1)
                        .font(.system(size: 12))
                    
                }
                
                Divider()
                    .overlay(.white)
                    .opacity(0.2)
                
                NavigationLink(destination:{
                    Home()
                    
                }, label: {
                    Text("Sign In")
                        .foregroundColor(.white)
                        .bold()
                        .frame(width: 296, height: 40)
                        .background(Color(red: 0.392, green: 0.646, blue: 0.463))
                        .cornerRadius(8)
                        .offset(y:30)
                        .font(.system(size: 18))
                    
                })
                HStack{
                    Text("Don’t have an account? ")
                        .foregroundColor(.gray)
                        .offset(y:30)
                        .font(.system(size: 14))
                    
                    NavigationLink(destination:{
                        SignUp()
                        
                    }, label: {
                        Text("Sign up")
                            .foregroundColor(Color(red: 0.392, green: 0.646, blue: 0.463))
                            .underline()
                            .offset(y:-1)
                            .font(.system(size: 14))
                    })
                    .offset(y:30)
                }
            }
            .edgesIgnoringSafeArea(.bottom)
            .navigationTitle("Sign In")
        }
    }
    
}

    struct SignIn_Previews: PreviewProvider {
        static var previews: some View {
            SignIn()
        }
    }

