//
//  ContentView.swift
//  Nickmate-Learn
//
//  Created by Valia Smolin on 09.07.2024.
//

import SwiftUI

struct ContentView: View {
    @State var isAuthenticationView: Bool = false
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    Spacer()
                        .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    HStack {
                        Text("Привет 👋")
                            .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                            .padding(.leading, 16.0)
                        Spacer()
                    }
                    Spacer()
                        .frame(height: 10)
                    HStack {
                        Text("Я, Ник, твой персональный коуч")
                            .font(
                                Font.custom("SF Pro", size: 16)
                                    .weight(.semibold)
                            )
                            .foregroundColor(Color(red: 0.5, green: 0.5, blue: 0.5))
                        
                            .frame(width: 298, alignment: .topLeading)
                            .padding(.leading, 16.0)
                        Spacer()
                    }
                    Spacer()
                        .frame(height: 60)
                    VStack(alignment: .leading, spacing: 24) {
                        HStack {
                            Text("Помогаю")
                                .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.leading)
                                .padding(.leading, 16.0)
                            Spacer()
                        }
                        VStack(alignment: .leading, spacing: 16) {
                            DescriptionItem(imageName: "tasks", textName: "Успевать делать важное", isCommingSoon: false)
                            DescriptionItem(imageName: "checkmarkl", textName: "Достигать цели", isCommingSoon: true)
                            DescriptionItem(imageName: "heart_fill", textName: "Быть счастливым человеком", isCommingSoon: true)
                            DescriptionItem(imageName: "text_badge_plus", textName: "Внедрять полезные привычки", isCommingSoon: true)
                            DescriptionItem(imageName: "accessibility_fill", textName: "Находить баланс в жизни", isCommingSoon: true)
                            DescriptionItem(imageName: "calendar", textName: "Управлять временем", isCommingSoon: true)
                        }
                    }
                    Spacer()
                        .frame(height: 45)
                    HStack {
                        Spacer()
                        HStack {
                            Text("Начать")
                                .foregroundStyle(.white)
                        }
                        .padding(.horizontal, 20)
                        .padding(.all, 14)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .background(Color(red: 0, green: 0.48, blue: 1))
                        .cornerRadius(12)
                        .onTapGesture {
                            isAuthenticationView.toggle()
                        }
                        Spacer()
                    }
                    Spacer()
                }
            }
            .navigationDestination(isPresented: $isAuthenticationView) {
                AuthenticationView()
            }
        }
        }
    }
    
    #Preview {
        ContentView()
    }
    
