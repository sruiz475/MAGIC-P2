//
//  XP.swift
//  MAGIC P2
//
//  Created by sruiz25 on 7/22/25.
//

import SwiftUI

struct XP: View {
    var body: some View {
        ScrollView {
            Text("Plot page")
                .navigationTitle("Plot")
            
            VStack(spacing: 20) {
                ForEach(0..<50) { index in
                    Text("Item \(index)")
                        .frame(width: 300, height: 50)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
            }
            .padding()
        }
    }
}

#Preview {
    XP()
}
