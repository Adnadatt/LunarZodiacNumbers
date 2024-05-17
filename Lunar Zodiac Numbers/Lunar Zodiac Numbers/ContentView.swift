//
//  ContentView.swift
//  Lunar Zodiac Numbers
//
//  Created by Chen, Amanda M on 2/2/24.
//

import SwiftUI

struct ContentView: View {
    @State private var year = 2024
    @State private var img = "image4"
    var body: some View {
        VStack {
            
            Text(String(year))
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(.red)
                .bold()
                
                
            
            Image(img)
                .resizable()
                .imageScale(.large)
                .scaledToFit()
                .padding()
            
            HStack{
                Button("<"){
                    year -= 1
                    img = "image" + String((year-4)%12)
                }
                .padding()
                .buttonStyle(.borderedProminent)
                .bold()
                
                
                Spacer()
                
                Button(">"){
                    year += 1
                    img = "image" + String((year-4)%12)
                }
                .padding()
                .buttonStyle(.borderedProminent)
                .bold()
            }
            .tint(.red)
            .font(.title)
            .fontWeight(.black)
            
        }
        .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
