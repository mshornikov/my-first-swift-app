//
//  Lecture.swift
//  MyFirstApp
//
//  Created by Михаил Шорников on 08.06.2023.
//

import Foundation

struct Lecture: Codable {
    var name: String
    var description: String
    var date: Date
    var duration: TimeInterval
}
