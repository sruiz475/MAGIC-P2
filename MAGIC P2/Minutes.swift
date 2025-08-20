//
//  WordsTyped.swift
//  MAGIC P2
//
//  Created by sruiz25 on 7/8/25.
//

import SwiftUI

struct Minutes: View {
    @State private var inputMinutes: Int? = nil
    @ObservedObject var xpManager: XPManager
    var body: some View {
        ZStack{
            Color(.lightGray)
            VStack{
                
                Image("Clock")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(40)
                NavigationLink(destination: ContentView()) {
                    Text("Home Page")
                        .modifier(HeaderStyle())
                }
                NavigationLink(destination: Stories()) {
                    Text("Story Page")
                        .modifier(HeaderStyle())
                }
                
                Form{
                    Section(header: Text("Add Minutes")) {
                        TextField("Minutes", value: $inputMinutes, format: .number)
                            .keyboardType(.numberPad)
                        
                        Button("Add") {
                            if let i = inputMinutes, i == 5 {
                                xpManager.totalMinutes += i
                                inputMinutes = nil
                                xpManager.manualBadges.append("Quick Write")
                            }
                            
                            else if let m = inputMinutes, m > 0 {
                                xpManager.totalMinutes += m
                                inputMinutes = nil 
                            }
                            
                        }
                                .disabled(inputMinutes == nil || inputMinutes! <= 0)
                            
                        }
                        Section {
                            Text("Total Minutes: \(xpManager.totalMinutes)")
                            Text("Total XP: \(xpManager.xp)")
                        }
                    }
                    
                    .scrollContentBackground(.hidden)
                    .background(Color.clear)
                }
            }
        }
    }

#Preview {
    Minutes(xpManager: XPManager())
}
