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
            TabBarView(changeScreen: $changeScreen)//1й changeScreen из TabBarView, 2й $changeScreen из текущего файла с 17строки
        }
    }
}


#Preview {
    MainView(changeScreen: .homeview)
}
