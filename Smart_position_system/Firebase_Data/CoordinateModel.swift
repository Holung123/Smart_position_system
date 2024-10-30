//
//  CoordinateModel.swift
//  Smart_position_system
//
//  Created by Man Ho Ching on 21/2/2024.
//

import Foundation

import Firebase
import FirebaseFirestore

struct Anchor_Coordinate:Identifiable, Codable {
    @DocumentID var id: String? = UUID().uuidString
    var coordinate: [Float]
 }

struct Tag_Coordinate:Identifiable, Codable {
    @DocumentID var id: String? = UUID().uuidString
    var coordinate: [Float]
    var UserStatus: Bool
 }
