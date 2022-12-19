//
//  Model.swift
//  cloud_kit
//
//  Created by Aldanah Alqbbani on 21/05/1444 AH.
//
import CloudKit

struct Learner: Identifiable {
    let record : CKRecord
    let id: CKRecord.ID
    var name: String
    var description: String
    var coordinates: CLLocation
    var phone: Int
    var Category: String
    var image: String

    init(record: CKRecord) {
            self.record = record
            self.id = record.recordID
            self.name = record["Name"] as? String ?? "Null "
            self.description = record["Description"] as? String ?? "Null"
            self.coordinates = record["coordinates"] as? CLLocation ?? CLLocation(latitude: 0.0, longitude: 0.0)
            self.phone = record["Phone"] as? Int ?? 0050
            self.Category = record["category"] as? String ?? "Null"
            self.image = record["image"] as? String ?? "Null "
        
        }
}
