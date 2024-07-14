//
//  MainView.swift
//  Nickmate-Learn
//
//  Created by Valia Smolin on 13.07.2024.
//

import SwiftUI
struct MainView: View {
    enum Screens {
        case homeview
        case meetings
        case add
        case incoming
        case more
    }
    @State var changeScreen: Screens = .homeview
    var body: some View {
        VStack {
            Spacer()
                        switch changeScreen {
                        case .homeview: HomeView()
                        case .meetings: MeetingsView()
                        case .add: ContentView()
                        case .incoming : IncomingView()
                        case .more : AuthenticationView()
                        }
            HStack{
                Spacer()
                    .frame(width: 24)
                TabBarItemView(icon: "house", text: "Дела")
                    .onTapGesture {
                        changeScreen = .homeview
                    }
                Spacer()
                TabBarItemView(icon: "calendar", text: "Встречи")
                    .onTapGesture {
                        changeScreen = .meetings
                    }
                Spacer()
                TabBarItemView(tabType: .icon, icon: "plus.circle.fill", text: "kj")
                    .onTapGesture {
                        changeScreen = .homeview
                    }
                Spacer()
                TabBarItemView(icon: "tray.and.arrow.down", text: "Входящие")
                    .onTapGesture {
                        changeScreen = .incoming
                    }
                
                Spacer()
                TabBarItemView(icon: "ellipsis", text: "Еще")
                    .onTapGesture {
                        changeScreen = .homeview
                    }
                
                Spacer()
                    .frame(width: 24)
            }
            .padding(.horizontal, 0)
            .padding(.top, 8)
            .padding(.bottom, 16)
            .frame( height: 60, alignment: .center)
            .background(.white)
            .shadow(color: .black.opacity(0.25), radius: 10.95, x: 0, y: 10)
            
        }
    }
}


#Preview {
    MainView(changeScreen: .homeview)
}
