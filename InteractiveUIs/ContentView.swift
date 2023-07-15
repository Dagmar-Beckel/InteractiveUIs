//
//  ContentView.swift
//  InteractiveUIs
//
//  Created by GoldenCalfCompanyMacPro2 on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var textTitle = "What is your name?"
    
    var body: some View {
        VStack(){ //spacing:20
            Text(textTitle)
                .font(.title)
            TextField("Type name here...", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray,width:1)
            
            Button(action: {
                textTitle = "Welcome, \(name)!"
            }){
                HStack{
                    Text("Submit name")
                        .font(.title2)
                    
                }
                .padding(7)
                .foregroundColor(.white)
                .background(Color.purple)
                .cornerRadius(10)
                
            }
        }.padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
