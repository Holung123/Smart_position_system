//
//  FireStoreManager.swift
//  Smart_position_system
//
//  Created by Man Ho Ching on 20/2/2024.
//

import Foundation

import Firebase
import FirebaseFirestore


class FirestoreManager: ObservableObject {
//    init() {
//        FetchCoordinate()
//    }
    @Published var anchor: [Anchor_Coordinate] = []
    @Published var Tag: [Tag_Coordinate] = []
    enum VendingMachineError: Error {
        case invalidSelection
        case insufficientFunds(coinsNeeded: Int)
        case outOfStock
    }
    func FetchCoordinate() {
        let db = Firestore.firestore()
        //locate the document path of firestore
        let documentRef = db.collection("Anchor")
        //Anchor_Coordinate form Firestore {NSArray-NSNumber to Float Array}
        documentRef.addSnapshotListener {(snapshot, error) in
            if error != nil {
                print(error?.localizedDescription)
            } else {
                if let snapshot = snapshot, !snapshot.isEmpty {
                    print("Posted data got")
                    
                    
                    self.anchor = snapshot.documents.map { document in
                        let data = document.data()
                        //Anchor_Coordinate(coordinate: document.get("coordinate") as? [Float] ?? [0] )
                        
                        let coordinate = data["coordinate"] as? [NSNumber] ?? []
                        print("coordinate:   " ,coordinate)
                        let floatCoordinates = coordinate.map { $0.floatValue }
                        print("float: ", floatCoordinates)
                        return Anchor_Coordinate(coordinate: floatCoordinates)
                    }
                    //print(self.anchor[0])
                    
                } else {
                    print("GET POSTED MESSAGES no data")
                }
            }
        }
        //locate the document path of firestore
        let documentRef_Tag = db.collection("Tag")
        //Tag_Coordinate form Firestore {Changes every 5 second}
        documentRef_Tag.addSnapshotListener {(snapshot, error) in
            if error != nil {
                print(error?.localizedDescription)
            } else {
                if let snapshot = snapshot, !snapshot.isEmpty {
                    print("Posted data got")
                    
                    self.Tag = snapshot.documents.map { document in
                        let data = document.data()
                        //Anchor_Coordinate(coordinate: document.get("coordinate") as? [Float] ?? [0] )
                        
                        let coordinate = data["coordinate"] as? [NSNumber] ?? []
                        print("coordinate:   " ,coordinate)
                        let floatCoordinates = coordinate.map { $0.floatValue }
                        print("float: ", floatCoordinates)
                        let status = data["status"] as? Bool ?? false
                        return Tag_Coordinate(coordinate: floatCoordinates,UserStatus:status);
                    }
                    //print(self.anchor[0])
                    
                } else {
                    print("GET POSTED MESSAGES no data")
                }
            }
        }
    }
}
