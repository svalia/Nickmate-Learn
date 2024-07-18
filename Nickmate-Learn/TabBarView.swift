//
//  TabBarView.swift
//  Nickmate-Learn
//
//  Created by Valia Smolin on 15.07.2024.
//

import SwiftUI
struct TabBarView: View {
    
    @Binding var changeScreen: MainView.Screens
    var body: some View {
        VStack {
            HStack{
                Spacer()
                    .frame(width: 24)
                TabBarItemView(isChooseScreen: changeScreen == .homeview, icon: "Home", text: "Дела")
                    .onTapGesture {
                        changeScreen = .homeview
                    }
                Spacer()
                TabBarItemView(isChooseScreen: changeScreen == .meetings, icon: "Calendar", text: "Встр.")
                    .onTapGesture {
                        changeScreen = .meetings
                    }
                Spacer()
                TabBarItemView(tabType: .icon, icon: "plus.circle.fill")
                    .onTapGesture {
                        changeScreen = .homeview
                    }
                Spacer()
                TabBarItemView(isChooseScreen: changeScreen == .incoming, icon: "Incoming", text: "Вход.")
                    .onTapGesture {
                        changeScreen = .incoming
                    }
                
                Spacer()
                TabBarItemView(icon: "More", text: "Еще")
                    .onTapGesture {
                        changeScreen = .homeview
                    }
                
                Spacer()
                    .frame(width: 24)
            }
            .background(.white)
        }
        .background(.clear)
        .padding(.top, -10)
        .compositingGroup()
        .shadow(color: .black.opacity(0.05), radius: 10, x: 0, y: -10)
    }
}

#Preview {
    TabBarView(changeScreen: .constant(.homeview))
}
