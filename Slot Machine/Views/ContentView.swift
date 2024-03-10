//
//  ContentView.swift
//  Slot Machine
//
//  Created by 鈴木航太 on 2024/03/10.
//

import SwiftUI

// MARK: - Propaty

struct ContentView: View {
    
    // MARK: - Body
    var body: some View {
        ZStack {
            // MARK: - Background
            LinearGradient(gradient: Gradient(colors: [Color("ColorPink"), Color("ColorPurple")]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            // MARK: - Interface
            VStack(alignment: .center, spacing: 5) {
                // MARK: - Header
                LogoView()
                
                Spacer()
                // MARK: - Scope
                HStack {
                    HStack {
                        Text("Your\nCoins".uppercased())
                            .scoreLabeleTyle()
                            .multilineTextAlignment(.trailing)
                           
                        
                        Text("100")
                            .scoreNumberStyle()
                            .modifier(ScoreNumberModifier())
        
                    }
                    .modifier(ScoreContainerModifier())
                    
                    Spacer()
                    
                    HStack {
                        Text("200")
                            .scoreNumberStyle()
                            .modifier(ScoreNumberModifier())
                        
                        Text("Hign\nCoins".uppercased())
                            .scoreLabeleTyle()
                            .multilineTextAlignment(.leading)
        
                    }
                    .modifier(ScoreContainerModifier())
                    
                    
                }
                // MARK: - SlotMachine
                VStack(alignment: .center, spacing: 0) {
                    // MARK: - Reel #1
                    ZStack {
                        ReelView()
                        Image("gfx-bell")
                            .resizable()
                            .modifier(ImageModifier())
                        
                    }
                    HStack(alignment: .center, spacing: 0) {
                        // MARK: - Reel #2
                        ZStack {
                            ReelView()
                            Image("gfx-seven")
                                .resizable()
                                .modifier(ImageModifier())
                            
                        }
                        Spacer()
                        // MARK: - Reel #3
                        ZStack {
                            ReelView()
                            Image("gfx-cherry")
                                .resizable()
                                .modifier(ImageModifier())
                            
                        }
                    }
                    .frame(maxWidth: 500)
                    
                    // MARK: - SpinButton
                    Button {
                        print("spinButton")
                    } label: {
                        Image("gfx-spin")
                            .renderingMode(.original)
                            .resizable()
                            .modifier(ImageModifier())
                    }
                } // SlotMachnine
                
                .layoutPriority(2)
                // MARK: - Footer
                Spacer()
            }
            // MARK: - Button
            .overlay(
                // MARK: - Reset
                Button(action: {
                    print("Reset")
                }, label: {
                    Image(systemName: "arrow.2.circlepath.circle")
                })
                .modifier(ButtonModifier())
                , alignment: .topLeading
            )
            .overlay(
                // MARK: - Info
                Button(action: {
                    print("InfoView")
                }, label: {
                    Image(systemName: "info.circle")
                })
                .modifier(ButtonModifier())
                , alignment: .topTrailing
            )
            .padding()
            .frame(maxWidth: 720)
            // MARK: - Popup
        }
    }
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
