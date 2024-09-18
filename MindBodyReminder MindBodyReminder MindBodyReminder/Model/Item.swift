//
//  Item.swift
//  MindBodyReminder MindBodyReminder MindBodyReminder
//
//  Created by Jose Alarcon Chacon on 5/14/24.
//

import Foundation
import SwiftUI

struct Item: Hashable {
    let imageName: String
    let label: String
}

let items: [Item] = [
    Item(imageName: "icons8-add-folder-94", label: "Remainders"),
    Item(imageName: "icons8-mindfulness-64", label: "Mindfulness"),
    Item(imageName: "icons8-class-94", label: "Classes"),
    Item(imageName: "icons8-contest-96", label: "Sports Center"),
    Item(imageName: "icons8-tutor-64", label: "Tutoring"),
    Item(imageName: "icons8-resource-64", label: "Resources")
]



