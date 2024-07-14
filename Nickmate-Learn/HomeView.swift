//
//  HomeView.swift
//  Nickmate-Learn
//
//  Created by Valia Smolin on 12.07.2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            
            ScrollView (showsIndicators: false) {
                LazyVStack
                {
                    ForEach (0..<100) {item in
                        TasktemView()
                    }
                }
//                .padding(.leading, 16)
            }//ScrollView End
        }
    }
}

#Preview {
    HomeView()
}
