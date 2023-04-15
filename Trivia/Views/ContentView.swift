//
//  ContentView.swift
//  Trivia
//
//  Created by Ravi Dwivedi on 03/10/22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var triviaManager  = TriviaManager()
    
    var body: some View {
        
        NavigationView
        {
            VStack(spacing:40){
                
                VStack(spacing:20){
                    
                    Text("Trivia Game")
                        .lilacTitle()
                    Text("Are you ready to test out your trivia skills? ")
                }
                
            NavigationLink{
                    TriviaView()
                    .environmentObject(triviaManager)
                
                    
            }
            label:{
                PrimaryButton(text:"Let's go!")
            }
        }
            .frame(maxWidth:.infinity,maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
            .background(Color(red:0.98438123,green: 0.921212,blue: 0.8470582359832))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
