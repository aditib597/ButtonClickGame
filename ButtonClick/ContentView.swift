//
//  ContentView.swift
//  ButtonClick
//
//  Created by Aditi on 7/23/20.
//  Copyright © 2020 Aditi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Button Game")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.black)
          Spacer()
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
            Text("Click Me")
                .font(.system(size: 50, weight: .heavy, design: .rounded))
                .foregroundColor(Color.white)
        }.frame(width: 300.0, height: 300.0)
        .background(Color.pink)
        .clipShape(Circle())
            .padding(.horizontal, 50.0)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
