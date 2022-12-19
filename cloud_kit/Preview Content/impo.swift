//
//  impo.swift
//  cloud_kit
//
//  Created by Aldanah Alqbbani on 21/05/1444 AH.
//

//import MapKit
//import SwiftUI
//import CloudKit
//import CoreLocation
//
//
//struct ContentView: View{
//    @State var pin :[MyAnnotationItem] = []
//    @StateObject private var viewModel = ContentViewModel()
//    @State private var showingEditScreen = false
//    @State var shop: Bool = false
//    @State var clinc: Bool = false
//    @State var servise: Bool = false
//    @State var adopt: Bool = false
//
//    var body: some View {
//        VStack{
//            NavigationView {
//                ZStack{
//                    Map(coordinateRegion: $viewModel.region,interactionModes: .all, showsUserLocation: true,
//                        annotationItems: pin,
//                        annotationContent: { pin in
//                        MapAnnotation(coordinate: pin.coordinate,
//                                      content: {
//                            PinButtonView(pin: pin)
//                        })
//                    })
//
//                    .edgesIgnoringSafeArea(.bottom)
//                    .accentColor(Color(.systemGreen))
//
//                    ///////?
//                    .onAppear {
//                        //                        viewModel.annotationItems
//                        fetchPin()
//                    }
//                    .navigationTitle("Pets Land")
//
//                    VStack{
//                        ScrollView(.horizontal){
//                            HStack{
//                                Button(action :{
//                                    //                                    viewModel.annotationItems = [MyAnnotationItem(name:"Apple Park",description: "Apple Inc. headquarters",coordinate: CLLocationCoordinate2D(latitude: 24.8114, longitude: 46.7013))]
//
//                                    shop.toggle()
//                                    clinc = false
//                                    servise = false
//                                    adopt = false
//
//                                }
//                                       , label: {
//                                    ZStack{
//                                        RoundedRectangle(cornerRadius: 8, style: .continuous)
//                                            .fill(Color(.gray))
//                                            .frame(width: 134,height: 42)
//                                            .cornerRadius(8)
//                                        RoundedRectangle(cornerRadius: 7, style: .continuous)
//                                            .fill(shop ? Color(red: 0.392, green: 0.646, blue: 0.463) : Color(red: 0.787, green: 0.877, blue: 0.754))
//                                            .overlay{
//                                                Text("Vets Shop")
//                                                    .font(.body)
//                                                    .fontWeight(shop ? .bold :.regular)
//                                                    .foregroundColor(shop ? .white :.black)
//                                                    .multilineTextAlignment(.center)
//
//                                            }
//                                            .frame(width: 132,height: 40)
//                                    }
//                                })
//                                ///
//                                Button(action :{
//                                    clinc.toggle()
//                                    shop = false
//                                    servise = false
//                                    adopt = false
//
//                                } , label: {
//                                    ZStack{
//
//                                        RoundedRectangle(cornerRadius: 8, style: .continuous)
//                                            .fill(Color(.gray))
//                                            .frame(width: 134,height: 42)
//                                            .cornerRadius(8)
//                                        RoundedRectangle(cornerRadius: 7, style: .continuous)
//                                            .fill(clinc ? Color(red: 0.392, green: 0.646, blue: 0.463) : Color(red: 0.787, green: 0.877, blue: 0.754))
//                                            .overlay{
//                                                Text("Vets Clinic")
//                                                    .fontWeight(clinc ? .bold :.regular)
//                                                    .foregroundColor(clinc ? .white :.black)
//                                                    .multilineTextAlignment(.center)
//
//                                            }
//                                            .frame(width: 132,height: 40)
//                                    }
//                                })
//
//                                //
//                                Button(action :{
//
//                                    servise.toggle()
//                                    shop = false
//                                    clinc = false
//                                    adopt = false
//                                } , label: {
//                                    ZStack{
//
//                                        RoundedRectangle(cornerRadius: 8, style: .continuous)
//                                            .fill(Color(.gray))
//                                            .frame(width: 134,height: 42)
//                                            .cornerRadius(8)
//                                        RoundedRectangle(cornerRadius: 7, style: .continuous)
//                                            .fill(servise ? Color(red: 0.392, green: 0.646, blue: 0.463) : Color(red: 0.787, green: 0.877, blue: 0.754))
//                                            .overlay{
//                                                Text("Vets Service")
//                                                    .font(.body)
//                                                    .fontWeight(servise ? .bold :.regular)
//                                                    .foregroundColor(servise ? .white :.black)
//                                                    .multilineTextAlignment(.center)
//
//                                            }
//
//                                            .frame(width: 132,height: 40)
//                                    }
//                                })
//                                //
//                                Button(action :{
//                                    adopt.toggle()
//                                    shop = false
//                                    clinc = false
//                                    servise = false
//                                    //????????
//                                } , label: {
//                                    ZStack{
//
//                                        RoundedRectangle(cornerRadius: 8, style: .continuous)
//                                            .fill(Color(.gray))
//                                            .frame(width: 134,height: 42)
//                                            .cornerRadius(8)
//                                        RoundedRectangle(cornerRadius: 7, style: .continuous)
//                                            .fill(adopt ? Color(red: 0.392, green: 0.646, blue: 0.463) : Color(red: 0.787, green: 0.877, blue: 0.754))
//                                            .overlay{
//                                                Text("Adoption center")
//                                                    .font(.body)
//                                                    .fontWeight(adopt ? .bold :.regular)
//                                                    .foregroundColor(adopt ? .white :.black)
//                                                    .multilineTextAlignment(.center)
//
//                                            }
//
//                                            .frame(width: 132,height: 40)
//                                    }
//                                })
//
//
//                            }.padding()
//                        }
//                        Spacer()
//                    }
//
//                }
//
//            }
//        }
//    }
//
//    struct ContentView_Previews: PreviewProvider {
//        static var previews: some View {
//            ContentView()
//        }
//    }
//
//    func fetchPin(){
//        print("hi")
//        let predecate = NSPredicate(value: true)
//        //        specific record
//        //        let predecate = NSPredicate(format: "Name == %@ ","Danah")
//        let query = CKQuery(recordType: "Pins", predicate: predecate)
//        let operation = CKQueryOperation(query: query)
//        operation.recordMatchedBlock = { recordID, result in
//            switch result{
//            case .success(let record):
//                let pins = MyAnnotationItem(record: record)
//                pin.append(pins)
//            case .failure(let error):
//                print("Error: \(error.localizedDescription)")
//            }
//        }
//        CKContainer(identifier: "iCloud.Pins_Location").publicCloudDatabase.add(operation)
//    }
////        CKContainer(identifier:"iCloud.Pins_Location").publicCloudDatabase.perform(query, inZoneWith: nil)
////        { records, error in
////            guard error == nil else{
////                print("Error: \(error?.localizedDescription)")
////                return
////            }
////            print("hiiiiiii")
////        }
////                let operation = CKQueryOperation(query: Query)
////                operation.recordMatchedBlock = { recordID, result in
////                    switch result{
////                    case .success(let record):
////                        print("record returned 😍")
////                       // let MyAnnotationItem = MyAnnotationItem (record: record)
////                       // pin.append(MyAnnotationItem)
////                    case .failure(let error):
////                        print("Error: \(error.localizedDescription)")
////                    }
////
////             }
////           CKContainer(identifier: "iCloud.com.dana.Pets-Land").publicCloudDatabase.add(operation)
////               //CKContainer.default().publicCloudDatabase.add(operation)
//
//    }
//
////}
//struct PinButtonView: View {
//    @State private var showingEditScreen = false
//    @State var pin: MyAnnotationItem
//
//    var body: some View {
//        Button(action: {
//            showingEditScreen.toggle()
//        }) {
//            Image(systemName: "mappin")
//                .padding()
//                .foregroundColor(.red)
//                .font(.title)
//        }
//        .sheet(isPresented: $showingEditScreen,
//               content: {
//            EditView(pin: self.$pin)
//                .presentationDetents([.large,.medium,.fraction(0.75)])
//        })
//    }
//}
//
//struct EditView: View {
//    @Environment(\.presentationMode) var presentationMode
//    @Binding var pin: MyAnnotationItem
//
//    var body: some View {
//        NavigationView {
//            Form {
//                TextField("Place name", text: $pin.name)
//                TextField("Description", text: $pin.description)
//            }
//            .navigationTitle("Edit place")
//            .navigationBarItems(trailing: Button("Done") {
//                self.presentationMode.wrappedValue.dismiss()
//            })
//        }
//    }
//}
//
//
////struct MyAnnotationItem: Identifiable {
////    let record : CKRecord
////    let id: CKRecord.ID
////    var name: String
////    var description: String
////    var coordinate: CLLocationCoordinate2D
////    var phone: Int
////    var Category: String
////
////    init(record: CKRecord) {
////            self.record = record
////            self.id = record.recordID
////            self.name = record["Name"] as? String ?? "Null "
////            self.description = record["Description"] as? String ?? "Null"
////            self.coordinate = record["coordinates"] as? CLLocationCoordinate2D ?? CLLocationCoordinate2D(latitude: 0.0, longitude: 0.0)
////            self.phone = record["Phone"] as? Int ?? 0050
////            self.Category = record["category"] as? String ?? "Null"
////        }
////}
//
//
//



// viewModel.annotationItems = [MyAnnotationItem(name:"Apple Park",description: "Apple Inc. headquarters",coordinate: CLLocationCoordinate2D(latitude: 24.8114, longitude: 46.7013))]


//specific record
//        let predecate = NSPredicate(format: "Name == %@ ","Danah")

//        CKContainer.default().publicCloudDatabase.add(operation)
