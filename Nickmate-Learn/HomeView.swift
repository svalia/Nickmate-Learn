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
                LazyVStack (spacing: 10)
                {
                    ForEach (0..<50) {item in
                        TasktemView(goalTitle: item % 2 == 0 ? "Запустить MVP" : nil, sphereTitle: item % 3 == 0 ? "Работа, Дом" : nil, assign: item % 2 == 0 ? true : false, daylyGoal: item % 4 == 0 ? true : false, focusMode: item % 3 == 0 ? true : false, isChecked: item % 4 == 0 ? true : false)
                        
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
