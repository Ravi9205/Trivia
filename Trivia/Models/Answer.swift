//
//  Answer.swift
//  Trivia
//
//  Created by Ravi Dwivedi on 03/10/22.
//

import Foundation


struct Answer:Identifiable{
    
    var id = UUID()
    var text:AttributedString
    var isCorrect:Bool
}
