//
//  ContentView.swift
//  cloud_kit
//
//  Created by Aldanah Alqbbani on 17/05/1444 AH.
//

import SwiftUI
import CloudKit


//Views
struct ContentView: View {
    @StateObject var vm = ViewModel()
//    @State var Learners :[Learner] = []
    var body: some View {
        NavigationView{
            List{
                ForEach(vm.Learners) { Learner  in
                        HStack(spacing: 2){
                            Image("avatar\(Int.random(in: 1..<7))")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 64, height: 64)
                                .clipShape(Circle())
                                .padding(.vertical)
                                .padding(.horizontal, 2)
                            
                            VStack(alignment: .leading, spacing:6){
                                Text("\(Learner.name)")
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                
                                Text("\(Learner.coordinates.coordinate.longitude)")
                                Text("\(Learner.coordinates.coordinate.longitude)")
                                Text("\(Learner.name)")
                                Text("\(Learner.phone)")
                                
                            }
                            .padding(6)
                        }
                    
                }
            }
            .listStyle(.plain)
            .navigationTitle("Learners")
            .onAppear{
                vm.fetchLearners()
            }
        }
    }
    
    
//    func fetchLearners(){
//        let predecate = NSPredicate(value: true)
//        //specific record
////        let predecate = NSPredicate(format: "Name == %@ ","Danah")
//        let Query = CKQuery(recordType: "Learners", predicate: predecate)
//        let operation = CKQueryOperation(query: Query)
//        operation.recordMatchedBlock = { recordID, Result in
//            switch Result{
//            case .success(let record):
//                let Learner = Learner (record: record)
//                Learners.append(Learner)
//            case .failure(let error):
//                print("Error: \(error.localizedDescription)")
//            }
//
//        }
//        CKContainer(identifier: "iCloud.com.dana.Pets-Land").publicCloudDatabase.add(operation)
////        CKContainer.default().publicCloudDatabase.add(operation)
//    }
    
    
//    func addLearner(){
//        let record = CKRecord(recordType: "Learners")
//        record["Name"] = "Reema"
//        record["Major"] = "Art"
//        record["age"] = 23
//        CKContainer(identifier: "iCloud.com.dana.Pets-Land").publicCloudDatabase.save(record){record, error in
//            guard  error  == nil else{
//                print(error?.localizedDescription)
//                return
//            }
//        }
//    }
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//Model
//struct Learner: Identifiable {
//    let record : CKRecord
//    let name : String
//    let major: String
//    let age : Int
//    let id: CKRecord.ID
//
//    init(record: CKRecord) {
//        self.record = record
//        self.id = record.recordID
//        self.name = record["Name"] as? String ?? "Null "
//        self.major = record["Major"] as? String ?? "Null "
//        self.age = record["age"] as? Int ?? 00
//
//    }
//}


