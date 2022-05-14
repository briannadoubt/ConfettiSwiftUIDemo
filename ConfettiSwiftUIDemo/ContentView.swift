//
//  ContentView.swift
//  ConfettiSwiftUIDemo
//
//  Created by Simon Bachmann on 26.11.20.
//

import SwiftUI
import ConfettiSwiftUI

struct ContentView: View {
    @State var counter1:Int = 0
    @State var counter2:Int = 0
    @State var counter3:Int = 0
    @State var counter4:Int = 0
    @State var counter5:Int = 0
    @State var counter6:Int = 0
    @State var counter7:Int = 0


    var body: some View {
        TabView {
            ZStack{
                ConfiguratorTab()
            }
            .tabItem{
                Image(systemName: "hammer")
                Text("Configurator")
            }
            
            ZStack{
                Text("🎉").font(.system(size: 50))
                    .onTapGesture(){counter1 += 1}
                    .confettiCannon(counter: $counter1)
            }
            .tabItem {
                Image(systemName: "sparkles")
                Text("Default")
            }
            
            ZStack{
                Text("🎊")
                    .font(.system(size: 50))
                    .onTapGesture(){counter2 += 1}
                    .confettiCannon(counter: $counter2, colors: [.red, .black], confettiSize: 20)
            }
            .tabItem {
                Image(systemName: "eyedropper")
                Text("Colors")
            }
            
            ZStack{
                Text("🔁").font(.system(size: 50)).onTapGesture(){counter3 += 1}
                    .confettiCannon(counter: $counter3, repetitions: 3, repetitionInterval: 0.7)
            }
            .tabItem {
                Image(systemName: "repeat")
                Text("Repeat")
            }
            
            ZStack{
                Text("🧨").font(.system(size: 50)).onTapGesture(){counter4 += 1}
                    .confettiCannon(counter: $counter4, num: 50, openingAngle: Angle(degrees: 0), closingAngle: Angle(degrees: 360), radius: 200)
            }
            .tabItem {
                Image(systemName: "flame")
                Text("Fireworks")
            }
            
            ZStack{
                Text("❤️").font(.system(size: 50)).onTapGesture(){counter5 += 1}
                    .confettiCannon(counter: $counter5, confettis: [.text("❤️"), .text("💙"), .text("💚"), .text("🧡")])
            }
            .tabItem {
                Image(systemName: "suit.heart")
                Text("Emoji")
            }
            
            ZStack{
                Text("💵").font(.system(size: 50)).onTapGesture(){counter6 += 1}
                    .confettiCannon(counter: $counter6, num:1, confettis: [.text("💵"), .text("💶"), .text("💷"), .text("💴")], confettiSize: 30, repetitions: 50, repetitionInterval: 0.1)
            }
            .tabItem {
                Image(systemName: "umbrella")
                Text("Make it Rain!")
            }
            
            ZStack{
                Button{
                    counter7 += 1
                }label: {
                    Image(systemName: "paperplane.fill")
                }
                .confettiCannon(counter: $counter7, confettis: [.sfSymbol(symbolName: "paperplane.fill")])
            }
            .tabItem {
                Image(systemName: "paperplane")
                Text("SF Symbols")
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
