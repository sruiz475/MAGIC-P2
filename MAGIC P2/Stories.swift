//
//  Stories.swift
//  MAGIC P2
//
//  Created by sruiz25 on 7/8/25.
//

import SwiftUI

struct Stories: View {
    var body: some View {
        NavigationLink(destination: Plot()) {
            Text("Plot")
                .modifier(HeaderStyle())
                
        }
        
        
        
        NavigationLink(destination: WordsTyped()) {
            Text("Characters")
                .modifier(HeaderStyle())
        }
        
      
        
        NavigationLink(destination: Points()) {
            Text("Points").modifier(HeaderStyle())
        }
        
    }
}

#Preview {
    Stories()
}
