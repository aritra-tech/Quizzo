//
//  Answer.swift
//  Quizzo
//
//  Created by Aritra on 08/04/24.
//

import Foundation

struct Answer: Identifiable {
    var id = UUID()
    var text: AttributedString
    var isCorrect: Bool
}
