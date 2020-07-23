//
//  ContentView.swift
//  ButtonClick
//
//  Created by Aditi on 7/23/20.
//  Copyright © 2020 Aditi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var score = 0
    @State var timeLeft = 20
    @State var buttonDisabled = false
    @State var text = "Start"
    var body: some View {
        VStack {
            Spacer()
            Text("Button Game")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.black)
            Spacer()
            Text("Score: \(score)").font(.system(size: 40, weight: .semibold, design: .rounded))
            Text("Time: \(timeLeft)").font(.system(size: 40, weight: .semibold, design: .rounded))
            Spacer()
            Button(action: {self.startGame()}) {
                Text(text).font(.system(size: 70, weight: .semibold, design: .rounded))
            }
          Spacer()
            Button(action: {self.buttonPress()
            }) {
            Text("Click Me")
                .font(.system(size: 50, weight: .heavy, design: .rounded))
                .foregroundColor(Color.white)
        }.frame(width: 300.0, height: 300.0)
        .background(Color.pink)
        .clipShape(Circle())
            .padding(.horizontal, 50.0)
        .disabled(buttonDisabled)
            Spacer()
        }//vstack
    }//var body
    func startGame() {
                 if timeLeft == 20 {
                    countDown()
                 }
           if timeLeft == 0 {
               timeLeft = 20
               score = 0
               text = "Start"
               buttonDisabled = false
           }
             }
    //func startgame
    func countDown() {
        
        if timeLeft > 0 {
        let seconds = 1.0
            DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            self.timeLeft = self.timeLeft - 1
            self.countDown()
                  }
              } else {
                text = "Start Over"
                buttonDisabled = true
              }
        }//func countdown
    func buttonPress() {
            print("upping score")
            score = score + 1
    }//func buttonpress
    
    func disable() {
        if timeLeft == 0 {
            buttonDisabled = true
        } else {
            buttonDisabled = false
        }
    }//func disable
    
}//content view


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
