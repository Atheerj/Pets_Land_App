//
//  Home.swift
//  cloud_kit
//
//  Created by Aldanah Alqbbani on 24/05/1444 AH.
//
import Foundation
import SwiftUI
import MapKit

struct OnBoardingStep {
    let image:  String
    let title:  String
    let title2: String
    let title3: String
    let title4: String
    let title5: String
    let image2: String
}
private let onBoardingSteps = [
    OnBoardingStep(image: "Cat1", title: "Sola", title2: "Abyssinuan Cat", title3: "Ginder: Girl",title4: "5 Months",title5: "Riyadh Shalter ,Riyadh",image2: "Image 2"),
    
    OnBoardingStep(image: "Cat2", title: "Sola", title2: "Abyssinuan Cat", title3: "Ginder: Girl",title4: "5 Months",title5: "Riyadh Shalter ,Riyadh",image2: "Image 2"),
    
    OnBoardingStep(image: "Cat3", title: "Sola", title2: "Abyssinuan Cat", title3: "Ginder: Girl",title4: "5 Months",title5: "Riyadh Shalter ,Riyadh",image2: "Image 2")]

struct Home: View {
    @StateObject var viewModel = ContentViewModel()
    @State private var currentStep = 0
    
    var body: some View {
        NavigationView(){
            ScrollView{
                VStack(alignment: .leading,spacing: 10){
                    
                    Text("Pets Land")
                        .font(.largeTitle)
                        .bold()
                        .padding(.top, 59.0)
                    Text("Services")
                        .font(.title)
                        .bold()
                        .foregroundColor(Color(red: 0.282, green: 0.282, blue: 0.291))
                        .padding(.top, 19.0)
                    NavigationLink(destination:{
                        MapView()
                        
                    }
                                   , label: {
                        ZStack(alignment: .leading){
                            
                            Map(coordinateRegion: $viewModel.region,
                                interactionModes: .all)
                            .cornerRadius(12)
                            .edgesIgnoringSafeArea(.bottom)
                            .accentColor(Color(.systemGreen))
                            .frame(height: 150)
                            .shadow(color: Color(red: 0.825, green: 0.921, blue: 0.793), radius: 8)
                            
                            RoundedRectangle(cornerRadius: 11, style: .continuous)
                                .offset(x:1,y:50)
                                .frame(width: 367,height: 50)
                                .foregroundColor(Color(red: 0.496, green: 0.708, blue: 0.535))
                                .overlay(){
                                    Text("Click on the map to explore pets related locations.")
                                        .font(.subheadline)
                                        .foregroundColor(Color.white)
                                        .offset(x:1,y:50)
                                }
                        }
                    })
                    Text("Adoption Opportunity")
                        .font(.title)
                        .bold()
                        .foregroundColor(Color(red: 0.282, green: 0.282, blue: 0.291))
                        .padding(.top, 20.0)
                    VStack(){
                        ZStack() {
                            RoundedRectangle(cornerRadius: 11, style: .continuous)
                                .fill(Color(red: 0.825, green: 0.921, blue: 0.793))
                                .frame(width: 364,height: 159)
                                .shadow(color: Color(red: 0.825, green: 0.921, blue: 0.793), radius: 2)
                            
                            RoundedRectangle(cornerRadius: 8, style: .continuous)
                                .fill(.white)
                                .frame(width: 360,height: 155)
                                .overlay{
                                    
                                    TabView(selection: $currentStep){
                                        ForEach(0..<onBoardingSteps.count, id: \.self){ it in
                                            HStack(alignment: .center,spacing: 3){
                                                Image(onBoardingSteps[it].image)
                                                    .resizable()
                                                    .frame(width: 140,height: 130)
                                                
                                                VStack(alignment: .leading,spacing: 3){
                                                    Text("Sola")
                                                        .font(.headline)
                                                        .bold()
                                                    
                                                    Text("Abyssinuan Cat")
                                                        .font(.subheadline)
                                                        .foregroundColor(Color.gray)
                                                        .bold()
                                                    
                                                    VStack(alignment: .leading){
                                                        Text("Ginder: Girl")
                                                            .font(.subheadline)
                                                            .foregroundColor(Color.gray)
                                                        Text("5 months")
                                                            .font(.subheadline)
                                                            .foregroundColor(Color.gray)
                                                        HStack{
                                                            Image("Image 6")
                                                                .resizable()
                                                                .frame(width: 12,height: 15)
                                                            Text("Riyadh Shalter, Riyadh")
                                                                .font(.subheadline)
                                                                .foregroundColor(Color.gray)
                                                        }
                                                        
                                                    }.padding(.vertical)
                                                }
                                                .padding(1)
                                            }
                                        }
                                        
                                    }
                                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                                }
                            
                            HStack{
                                ForEach(0..<onBoardingSteps.count, id: \.self){ it in
                                    if it == currentStep{
                                        Circle()
                                            .frame(width: 10, height: 10)
                                            .cornerRadius(10)
                                            .foregroundColor(Color(red: 0.496, green: 0.708, blue: 0.535))
                                        
                                    }
                                    else{
                                        Circle().frame(width: 10, height: 10)
                                            .foregroundColor(Color(red: 0.825, green: 0.921, blue: 0.793))
                                    }
                                }
                            }
                            .padding(.top, 200.0)
                        }
                        
                        
                    }
                    
                    Text("Service Provider?")
                        .font(.title)
                        .bold()
                        .foregroundColor(Color(red: 0.282, green: 0.282, blue: 0.291))
                    HStack{
                        NavigationLink(destination:{
                            SignIn()
                            
                        }
                                       , label: {
                            ZStack(){
                                
                                RoundedRectangle(cornerRadius: 11, style: .continuous)
                                    .fill(Color(red: 0.825, green: 0.921, blue: 0.793))
                                    .frame(width: 165,height: 120)
                                    .shadow(color: Color(red: 0.825, green: 0.921, blue: 0.793), radius: 2)
                                ZStack{
                                    RoundedRectangle(cornerRadius: 8, style: .continuous)
                                        .fill(.white)
                                        .frame(width: 160,height: 115)
                                        .overlay{
                                            VStack{
                                                Image("SignIn")
                                                    .resizable()
                                                    .frame(width: 36,height: 52)
                                                Text("SignIn")
                                                    .foregroundColor(Color(red: 0.392, green: 0.646, blue: 0.463))
                                            }
                                            
                                        }
                                    
                                }
                                .padding()
                            }
                        })
                        
                        NavigationLink(destination:{
                            SignUp()
                            
                        }
                                       , label: {
                            ZStack(){
                                RoundedRectangle(cornerRadius: 11, style: .continuous)
                                    .fill(Color(red: 0.825, green: 0.921, blue: 0.793))
                                    .frame(width: 165,height: 120)
                                    .shadow(color: Color(red: 0.825, green: 0.921, blue: 0.793), radius: 2)
                                ZStack{
                                    RoundedRectangle(cornerRadius: 8, style: .continuous)
                                        .fill(.white)
                                        .frame(width: 160,height: 115)
                                        .overlay{
                                            VStack{
                                                Image("SignUp")
                                                    .resizable()
                                                    .frame(width: 36,height: 52)
                                                Text("SignUp")
                                                    .foregroundColor(Color(red: 0.392, green: 0.646, blue: 0.463))
                                            }
                                        }
                                }
                            }
                        })
                    }
                    .navigationBarBackButtonHidden(true)
                    //                .navigationTitle("Pets Land")
                }.padding()
                
            }
        }
    }
    
}
struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
