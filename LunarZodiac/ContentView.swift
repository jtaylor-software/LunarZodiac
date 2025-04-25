//
//  ContentView.swift
//  LunarZodiac
//
//  Created by Jeremy Taylor on 4/25/25.
//

import SwiftUI

struct ContentView: View {
  @State private var year = 2025
  @State private var imageNumber = 5
  let numberOfImages = 12
  
    var body: some View {
        VStack {
            Text(String(year))
            .font(.largeTitle)
            .fontWeight(.black)
            .foregroundStyle(.red)
            
          Spacer()
          
          Image("image\(imageNumber)")
            .resizable()
            .scaledToFit()
          
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
    if imageNumber < 0 {
      imageNumber = 11
    } else {
      imageNumber -= 1
    }
  }
  func incrementYear() {
    year += 1
    if imageNumber > 11 {
      imageNumber = 0
    } else {
      imageNumber += 1
    }
  }
}

#Preview {
    ContentView()
}
