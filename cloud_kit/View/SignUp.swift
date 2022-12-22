//
//  SignUp.swift
//  cloud_kit
//
//  Created by Aldanah Alqbbani on 24/05/1444 AH.
//

import SwiftUI

struct SignUp: View {
    @State private var Fullname = " "
    @State private var Number = " "
    @State private var Mail = " "
    @State private var Password = " "
    var Category = ["shop", "service", "adopt", "clinic"]
    @State private var selectedCategory = "Category"
    @State private var Location = " "
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    Image("Logo")
                        .resizable()
                        .scaledToFill()
                        .frame(width:144, height:144)
                    
                    VStack(){
                        
                        
                        VStack{
                            Text("Full name ")
                                .frame(width: 360,alignment: .leading)
                                .foregroundColor(Color(red: 0.282, green: 0.282, blue: 0.291))
                                .font(.headline)
                            HStack {
                                Image(systemName: "person")
                                    .foregroundColor(Color(red: 0.392, green: 0.646, blue: 0.463))
                                TextField("", text: .constant("clinicxxx")).foregroundColor(Color.gray)
                                    .frame(width:320, height:27)
                            }
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 11).stroke(lineWidth: 1)
                                .foregroundColor(Color(red: 0.392, green: 0.646, blue: 0.463))
                                .frame(width:366, height:44))
                            
                            
                        }
                        
                        VStack{
                            Text("Number")
                                .frame(width: 360,alignment: .leading)
                                .foregroundColor(Color(red: 0.282, green: 0.282, blue: 0.291))
                                .font(.headline)
                            
                            HStack {
                                Image(systemName: "phone")
                                    .foregroundColor(Color(red: 0.392, green: 0.646, blue: 0.463))
                                TextField("", text: .constant("050937XXXX")).foregroundColor(Color.gray)
                                    .frame(width:320, height:27)
                            }
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 11).stroke(lineWidth: 1)
                                .foregroundColor(Color(red: 0.392, green: 0.646, blue: 0.463))
                                .frame(width:366, height:44))
                        }
                        
                        .navigationTitle("Sign UP")
                        
                        VStack{
                            Text("Email")
                                .frame(width: 360,alignment: .leading)
                                .foregroundColor(Color(red: 0.282, green: 0.282, blue: 0.291))
                                .font(.headline)
                            
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
                        VStack{
                            Text ("Password" )
                                .frame(width: 360,alignment: .leading)
                                .foregroundColor(Color(red: 0.282, green: 0.282, blue: 0.291))
                                .font(.headline)
                            HStack {
                                Image(systemName: "lock")
                                    .foregroundColor(Color(red: 0.392, green: 0.646, blue: 0.463))
                                SecureField("", text: .constant("email@ejhm")).foregroundColor(Color.gray)
                                    .frame(width:320, height:27)
                            }
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 11).stroke(lineWidth: 1)
                                .foregroundColor(Color(red: 0.392, green: 0.646, blue: 0.463))
                                .frame(width:366, height:44))
                        }
                        
                       
                        VStack{
                            Text("Location")
                                .frame(width: 360,alignment: .leading)
                                .foregroundColor(Color(red: 0.282, green: 0.282, blue: 0.291))
                                .font(.headline)
                            HStack {
                                Image(systemName: "location")
                                    .foregroundColor(Color(red: 0.392, green: 0.646, blue: 0.463))
                                TextField("", text: .constant("Riyadh")).foregroundColor(Color.gray)
                                    .frame(width:320, height:27)
                            }
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 11).stroke(lineWidth: 1)
                                .foregroundColor(Color(red: 0.392, green: 0.646, blue: 0.463))
                                .frame(width:366, height:44))
                        }
                    }
                    VStack(){
                        Button(action:{

                        },label: {
                            Text("Sign Up")
                                .foregroundColor(.white)
                                .bold()
                                .frame(width: 305, height: 50)
                                .background(Color(red: 0.392, green: 0.646, blue: 0.463))
                                .cornerRadius(8)
                                .font(.system(size: 18))
                                .padding(8)
                        }).padding(.top,30)
                        
                        HStack{
                            Text("Do You have an account? ")
                                .foregroundColor(.gray)
                                .font(.system(size: 16))
                            
                            Button(action:{
//                                SignIn()
//
                            }, label: {
                                Text("Sign In")
                                    .foregroundColor(Color(red: 0.392, green: 0.646, blue: 0.463))
                                    .font(.system(size: 16))
                            })
                        }
                    }
                }
            }
        }
    }
}
struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
//                    VStack{
//                        Text("Service ")
//                            .frame(width: 360,alignment: .leading)
//                            .foregroundColor(Color(red: 0.282, green: 0.282, blue: 0.291))
//                            .font(.headline)
//
//                        HStack(){
//
//                            Image(systemName: "menucard")
//                                .foregroundColor(Color("green2"))
//                            TextField("", text: .constant("")).foregroundColor(Color.gray)
//                            .frame(width:320, height:27)}
//
//                        Picker("Please choose a Category", selection: $selectedCategory) {
//                            ForEach(Category, id: \.self) {
//                                Text($0)
//                            }
//                            .pickerStyle(MenuPickerStyle())
//                        }
//                    }
//                    .padding()
//                    .overlay(RoundedRectangle(cornerRadius: 11).stroke(lineWidth: 1)
//                        .foregroundColor(Color("green2"))
//                        .frame(width:366, height:44))
