//
//  QuestionView.swift
//  Trivia
//
//  Created by Ravi Dwivedi on 03/10/22.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var triviaManager: TriviaManager
    
    
    var body: some View {
        VStack(spacing:40){
            
            HStack{
                Text("Trivia Game")
                    .lilacTitle()
                Spacer()
                Text("\(triviaManager.index + 1) out of \(triviaManager.length)")
                    .foregroundColor(Color("AccentColor"))
                    .fontWeight(.heavy)
                
                
            }
            
            ProgressBar(progress: triviaManager.progress)
            
            VStack(alignment: .leading, spacing: 20){
                
                Text(triviaManager.question)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.gray)
                
                ForEach(triviaManager.answerChoices, id:\.id){ answer in
                   AnswerRow(answer: answer)
                        .environmentObject(triviaManager)
                }
            }
            
            Button{
                triviaManager.gotToNextQuestion()
            }label:{
                PrimaryButton(text:"Next",background:triviaManager.answerSelected ? Color("AccentColor"): Color(hue: 1.0, saturation: 0.0, brightness: 0.564,opacity:0.327))

            }
            .disabled(!triviaManager.answerSelected)
            Spacer()
            
            
        }
        .padding()
        .frame(maxWidth: .infinity,   maxHeight:.infinity )
        .background(Color(red:0.98438123,green: 0.921212,blue: 0.8470582359832))
        .navigationBarHidden(true)
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
            .environmentObject(TriviaManager())
        
    }
}
