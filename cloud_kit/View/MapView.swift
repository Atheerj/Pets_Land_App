//
//  MapView.swift
//  cloud_kit
//
//  Created by Aldanah Alqbbani on 24/05/1444 AH.


import MapKit
import SwiftUI
import CloudKit
import CoreLocation

struct MapView: View{
    @StateObject var viewModel = ContentViewModel()
    @StateObject var viewMode2 = ViewModel()
    @State var selectedCatogry: String = ""
    
    
    @State var shop: Bool = false
    @State var clinc: Bool = false
    @State var servise: Bool = false
    @State var adopt: Bool = false
    
    var body: some View {
        NavigationView {
            VStack{
                ZStack{
                    Map(coordinateRegion: $viewModel.region,
                        showsUserLocation: true,
                        annotationItems: showdPins,
                        annotationContent: { item in
                        MapAnnotation(coordinate:CLLocationCoordinate2D(latitude: item.coordinates.coordinate.latitude, longitude: item.coordinates.coordinate.longitude),content: {
                            PinButtonView(pin: item)
                        })
                    }
                    )
                    .edgesIgnoringSafeArea(.bottom)
                    .accentColor(Color(.systemGreen))
                    .onAppear {
                        viewModel.checkIfLocationServicesIsEnabled()
                        viewMode2.fetchLearners()
                    }
                    VStack{
                        ScrollView(.horizontal){
                            HStack{
                                Button(action :{
                                    //
                                    selectedCatogry = "Shop"
                                    shop.toggle()
                                    clinc = false
                                    servise = false
                                    adopt = false
                                }
                                       , label: {
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 8, style: .continuous)
                                            .fill(Color(.gray))
                                            .frame(width: 134,height: 42)
                                            .cornerRadius(8)
                                        RoundedRectangle(cornerRadius: 7, style: .continuous)
                                            .fill(shop ? Color(red: 0.392, green: 0.646, blue: 0.463) : Color(red: 0.787, green: 0.877, blue: 0.754))
                                            .overlay{
                                                Text("Vets Shop")
                                                    .font(.body)
                                                    .fontWeight(shop ? .bold :.regular)
                                                    .foregroundColor(shop ? .white :.black)
                                                    .multilineTextAlignment(.center)
                                            }
                                            .frame(width: 132,height: 40)
                                    }
                                })
                                Button(action :{
                                    selectedCatogry = "Clinic"
                                    clinc.toggle()
                                    shop = false
                                    servise = false
                                    adopt = false
                                    
                                } , label: {
                                    ZStack{
                                        
                                        RoundedRectangle(cornerRadius: 8, style: .continuous)
                                            .fill(Color(.gray))
                                            .frame(width: 134,height: 42)
                                            .cornerRadius(8)
                                        RoundedRectangle(cornerRadius: 7, style: .continuous)
                                            .fill(clinc ? Color(red: 0.392, green: 0.646, blue: 0.463) : Color(red: 0.787, green: 0.877, blue: 0.754))
                                            .overlay{
                                                Text("Vets Clinic")
                                                    .fontWeight(clinc ? .bold :.regular)
                                                    .foregroundColor(clinc ? .white :.black)
                                                    .multilineTextAlignment(.center)
                                                
                                            }
                                            .frame(width: 132,height: 40)
                                    }
                                })
                                
                                
                                Button(action :{
                                    selectedCatogry = "Service"
                                    servise.toggle()
                                    shop = false
                                    clinc = false
                                    adopt = false
                                } , label: {
                                    ZStack{
                                        
                                        RoundedRectangle(cornerRadius: 8, style: .continuous)
                                            .fill(Color(.gray))
                                            .frame(width: 134,height: 42)
                                            .cornerRadius(8)
                                        RoundedRectangle(cornerRadius: 7, style: .continuous)
                                            .fill(servise ? Color(red: 0.392, green: 0.646, blue: 0.463) : Color(red: 0.787, green: 0.877, blue: 0.754))
                                            .overlay{
                                                Text("Vets Service")
                                                    .font(.body)
                                                    .fontWeight(servise ? .bold :.regular)
                                                    .foregroundColor(servise ? .white :.black)
                                                    .multilineTextAlignment(.center)
                                                
                                            }
                                        
                                            .frame(width: 132,height: 40)
                                    }
                                })
                                //
                                Button(action :{
                                    selectedCatogry = "Adopt"
                                    adopt.toggle()
                                    shop = false
                                    clinc = false
                                    servise = false
                                    //????????
                                } , label: {
                                    ZStack{
                                        
                                        RoundedRectangle(cornerRadius: 8, style: .continuous)
                                            .fill(Color(.gray))
                                            .frame(width: 134,height: 42)
                                            .cornerRadius(8)
                                        RoundedRectangle(cornerRadius: 7, style: .continuous)
                                            .fill(adopt ? Color(red: 0.392, green: 0.646, blue: 0.463) : Color(red: 0.787, green: 0.877, blue: 0.754))
                                            .overlay{
                                                Text("Adoption center")
                                                    .font(.body)
                                                    .fontWeight(adopt ? .bold :.regular)
                                                    .foregroundColor(adopt ? .white :.black)
                                                    .multilineTextAlignment(.center)
                                                
                                            }
                                        
                                            .frame(width: 132,height: 40)
                                    }
                                })
                                
                                
                            }.padding()
                        }
                        Spacer()
                    }
                    .navigationTitle("Services")
                    .navigationBarTitleDisplayMode(.automatic)
                }
            }
        }
    }
    var shopPins: [Learner]{
        
        return viewMode2.Learners.filter{$0.Category == "Shop"}
    }
    var shopPins2: [Learner]{
        
        return viewMode2.Learners.filter{$0.Category == "Adopt"}
    }
    var shopPins3: [Learner]{
        
        return viewMode2.Learners.filter{$0.Category == "Clinic"}
    }
    var shopPins4: [Learner]{
        
        return viewMode2.Learners.filter{$0.Category == "Service"}
    }
    
    var showdPins: [Learner]{
        switch selectedCatogry{
        case "Shop":
            return shopPins
            
        case "Adopt":
            return shopPins2
            
        case "Clinic":
            return shopPins3
            
        case "Service":
            return shopPins4
            
        default:
            return viewMode2.Learners
        }
        return viewMode2.Learners
    }
}
    
    struct MapView_Previews: PreviewProvider {
        static var previews: some View {
            MapView()
        }
    }

struct EditView: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var pin: Learner
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 7){
                HStack{
                    Image("image \(Int.random(in:1..<6))")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80,height: 80)
                        .clipShape(Rectangle())
                        .padding(.vertical)
                        .padding(.horizontal,2)
                    
                    VStack(alignment: .leading, spacing: 6){
                        Text("\(pin.Category)")
                        
                            .fontWeight(.semibold)
                            .font(.system(size: 23))
                        Text("\(pin.phone)")
                            .foregroundColor(Color(hue: 1.0, saturation: 0.038, brightness: 0.384))
                            .fontWeight(.regular)
                            .font(.system(size: 20))
                    }
                }.padding()
                
                Text("Open . closes 11:30PM ")
                    .foregroundColor(Color(red: 0.392, green: 0.646, blue: 0.463))
                    .font(.system(size: 20))
                    .bold()
                    .padding(.horizontal,2)
                Text("\(pin.description)")
                    .font(.system(size: 21))
                    .fontWeight(.regular)
                
                Text("Services: ")
                    .foregroundColor(Color(red: 0.392, green: 0.646, blue: 0.463))
                    .font(.system(size: 20))
                    .bold()
                HStack(alignment: .center, spacing: 8){
                    VStack{
                        Image("Image-1")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 60,height: 60)
                            .clipShape(Circle())
                            .padding(.horizontal,1)
                        
                        Text("Food")
                            .foregroundColor(Color(hue: 1.0, saturation: 0.038, brightness: 0.384))
                            .fontWeight(.regular)
                            .font(.system(size: 14))
                        
                    }
                    VStack{
                        Image("Image-2")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 60,height: 60)
                            .clipShape(Circle())
                            .padding(.horizontal,1)
                        
                        Text("Utilities")
                            .foregroundColor(Color(hue: 1.0, saturation: 0.038, brightness: 0.384))
                            .fontWeight(.regular)
                            .font(.system(size: 14))
                    }
                    VStack{
                        Image("Image-3")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 60,height: 60)
                            .clipShape(Circle())
                            .padding(.horizontal,1)
                        
                        Text("Clinic")
                            .foregroundColor(Color(hue: 1.0, saturation: 0.038, brightness: 0.384))
                            .fontWeight(.regular)
                            .font(.system(size: 14))
                    }
                    VStack{
                        Image("Image-4")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 60,height: 60)
                            .clipShape(Circle())
                            .padding(.horizontal,1)
                        
                        Text("Tech")
                            .foregroundColor(Color(hue: 1.0, saturation: 0.038, brightness: 0.384))
                            .fontWeight(.regular)
                            .font(.system(size: 14))
                    }
                    VStack{
                        Image("Image-5")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 60,height: 60)
                            .clipShape(Circle())
                            .padding(.horizontal,1)
                        
                        Text("Walk")
                            .foregroundColor(Color(hue: 1.0, saturation: 0.038, brightness: 0.384))
                            .fontWeight(.regular)
                            .font(.system(size: 14))
                    }
                }.padding()
                Spacer()
            }.padding()
            
                .navigationTitle($pin.name)
                .font(.headline)
                .navigationBarItems(trailing: Button("Done") {
                    self.presentationMode.wrappedValue.dismiss()
                })
        }
    }
}
struct PinButtonView: View {
    @State private var showingEditScreen = false
    @State var pin: Learner

    var body: some View {
        Button(action: {
            showingEditScreen.toggle()
        }) {
            Image(systemName: "mappin")
                .padding()
                .foregroundColor(.red)
                .font(.title)
        }
        .sheet(isPresented: $showingEditScreen,
               content: {
            EditView(pin: self.$pin)
                .presentationDetents([.large,.medium,.fraction(0.75)])
        })
    }
}
