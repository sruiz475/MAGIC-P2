//
//  WordsTyped.swift
//  MAGIC P2
//
//  Created by sruiz25 on 7/8/25.
//

import SwiftUI

struct Minutes: View {
    @State private var minutes: Int = 0
    var body: some View {
        ZStack{
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
                    
                    Text("Add Minutes")
                        .font(.largeTitle.bold())
                        .navigationTitle("Add Minutes")
                        .navigationBarBackButtonHidden()
                    
                        .padding()
                    
                    TextField("Minutes Typed", value: $minutes, format: .number)
                    
                }
            }
        }
    }
}
#Preview {
    Minutes()
}
