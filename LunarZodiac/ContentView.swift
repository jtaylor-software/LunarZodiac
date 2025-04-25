//
//  ContentView.swift
//  LunarZodiac
//
//  Created by Jeremy Taylor on 4/25/25.
//

import SwiftUI

struct ContentView: View {
  @State private var year = 2025
  let animalNames = ["RAT", "OX", "TIGER", "RABBIT", "DRAGON", "SNAKE", "HORSE", "GOAT", "MONKEY", "ROOSTER", "DOG", "PIG"]
  
    var body: some View {
        VStack {
            Text(String(year))
            .font(.largeTitle)
            .fontWeight(.black)
            .foregroundStyle(.red)
            
          Spacer()
          
          Image("\(animalNames[abs(year % 10)])")
            .resizable()
            .scaledToFit()
          
          Text("\(animalNames[abs(year % 10)])")
            .font(.largeTitle)
            .fontWeight(.black)
          
          
            
          
          HStack {
            Button {
              decrementYear()
            } label: {
              Image(systemName: "chevron.left")
            }
            Spacer()
            Button {
              incrementYear()
            } label: {
              Image(systemName: "chevron.right")
            }
          }
          .font(.largeTitle)
          .tint(.red)
          .fontWeight(.black)
            
          
        }
        .padding()
    }
  func decrementYear() {
    year -= 1
    
  }
  func incrementYear() {
    year += 1
    
  }
}

#Preview {
    ContentView()
}
