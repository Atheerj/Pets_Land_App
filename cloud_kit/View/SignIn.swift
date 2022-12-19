//
//  SignIn.swift
//  cloud_kit
//
//  Created by Aldanah Alqbbani on 24/05/1444 AH.
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

                    Text("Email:")
                        .frame(width: 360,alignment: .leading)
                        .foregroundColor(.black)
                        .font(.headline)
                        .padding(.vertical,0)
                        .offset(x:14,y:22)
                    
                    TextField("Email", text: .constant("email@example.com"))
                        .font(.title3)
                        .foregroundColor(Color.gray)
                        .padding()
                        .frame(width: 340,height: 50)
                        .background(Color.white)
                        .cornerRadius(50.0)
                        .shadow(color: Color.black.opacity(0.08), radius: 60, x:0.0, y:16)
                        .padding(.vertical)
                        .overlay(
                              RoundedRectangle(cornerRadius: 28)
                                  .stroke(Color("green"), lineWidth: 2)
                                  .frame(width:340, height:50)
                          )
                    
                
                    Divider()
                        .overlay(.white)
                        .opacity(0.2)
                    Text("Password:")
                        .frame(width: 360,alignment: .leading)
                        .foregroundColor(.black)
                        .font(.headline)
                        .padding(.vertical,0)
                        .offset(x:14,y:22)
                    
                    TextField("Email", text: .constant("******"))
                        .padding(.horizontal)
                        .foregroundColor(.gray)
                        .font(.title3)
                        .padding()
                        .frame(width:340, height:50)
                        .background(Color.white)
                        .cornerRadius(50.0)
                        .shadow(color: Color.black.opacity(0.08), radius: 60, x:0.0, y:16)
                        .padding(.vertical)
                        .overlay(
                              RoundedRectangle(cornerRadius: 28)
                                  .stroke(Color("green"), lineWidth: 2)
                                  .frame(width:340, height:50)
                          )

                    HStack{
                        
                    }
                    
                    Button{
                        
                        
                    }label: {
                        Text("Forgot Password?")
                            .foregroundColor(Color("green"))
                            .offset(y:-1)
                            .font(.system(size: 16))
                        
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
                            .frame(width: 305, height: 50)
                            .background(Color(red: 0.496, green: 0.708, blue: 0.539))
                            .cornerRadius(8)
                            .offset(y:30)
                            .font(.system(size: 18))
                        
                    })
                    HStack{
                        Text("Don’t have an account? ")
                            .foregroundColor(.gray)
                            .offset(y:30)
                            .font(.system(size: 16))
                        
                        NavigationLink(destination:{
                            SignUp()
                            
                        }, label: {
                            Text("Sign up")
                                .foregroundColor(Color("green"))
                                .offset(y:-1)
                                .font(.system(size: 16))
                        })
                        .offset(y:30)
                    }
                }
            }
            
            .navigationTitle("Sign In")
            
        }
    }
}
    struct SignIn_Previews: PreviewProvider {
        static var previews: some View {
            SignIn()
        }
    }
