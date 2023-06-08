//
//  Course.swift
//  MyFirstApp
//
//  Created by Михаил Шорников on 08.06.2023.
//

import Foundation

struct Course: Codable {
    var name: String
    var lectures: [Lecture]
}
