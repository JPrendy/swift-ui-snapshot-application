//
//  ContentView.swift
//  Landmarks
//
//  Created by James Prendergast  on 08/10/2020.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        Text("Test")
            .padding()
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .foregroundColor(.red)
            .border(Color.black)
    }
}

struct ok: View {
    var body: some View {
        
        Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ok()
        }
    }
}
