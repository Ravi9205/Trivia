//
//  Extensions.swift
//  Trivia
//
//  Created by Ravi Dwivedi on 03/10/22.
//

import Foundation
import SwiftUI


extension Text{
    
    func lilacTitle()->some View{
        self.font(.title)
        .fontWeight(.heavy)
        .foregroundColor(Color("AccentColor"))
    }
}
