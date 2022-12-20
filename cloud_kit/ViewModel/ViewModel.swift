//
//  ViewModel.swift
//  cloud_kit
//
//  Created by Aldanah Alqbbani on 21/05/1444 AH.
//

import Foundation
import CloudKit

class ViewModel: ObservableObject{
    @Published var Learners :[Learner] = []
    
    func fetchLearners(){
        let predecate = NSPredicate(value: true)
        let Query = CKQuery(recordType: "Pins", predicate: predecate)
        let operation = CKQueryOperation(query: Query)
        operation.recordMatchedBlock = { recordID, Result in
            DispatchQueue.main.async {
                switch Result{
                case .success(let record):
                    let Learner = Learner (record: record)
                    self.Learners.append(Learner)
                case .failure(let error):
                    print("Error: \(error.localizedDescription)")
                }
            }
        }
        CKContainer(identifier: "iCloud.com.dana.Pets-Land").publicCloudDatabase.add(operation)
    }
}

