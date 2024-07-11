//
//  AuthenticationView.swift
//  Nickmate-Learn
//
//  Created by Valia Smolin on 12.07.2024.
//

import SwiftUI

struct AuthenticationView: View {
    @Environment(\.dismiss) var closeIcon
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    HStack {
                        Text("Регистрация")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding(.leading, 24.0)
                            .foregroundColor(Color(red: 0.15, green: 0.15, blue: 0.15))
                            .frame(alignment: .leading)
                        Spacer()
                    }
                    Spacer()
                    Image("squareAndPencil")
                    Spacer()
                    VStack(alignment: .center, spacing: 24) {
                        Text("Продолжить с помощью")
                            .font(Font.custom("SF Pro", size: 13))
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 0.44, green: 0.5, blue: 0.59))
                            .frame(width: 279, alignment: .center)
                        HStack {
                            Spacer()
                            HStack {
                                Text("Google")
                                    .foregroundStyle(.white)
                            }
                            .padding(.horizontal, 20)
                            .padding(.all, 14)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .background(Color(red: 0, green: 0.48, blue: 1))
                            .cornerRadius(12)
                            //                        .onTapGesture {
                            //                            isAuthenticationView.toggle()
                            Spacer()
                        }
                        // Caption1/Regular
                        Text("Нажимая кнопку, соглашаюсь с Правилами использования и Политикой конфиденциальности")
                            .font(Font.custom("SF Pro", size: 12))
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 0.63, green: 0.68, blue: 0.75))
                        
                            .frame(width: 337, alignment: .center)
                    }
                    .padding(0)
                    .frame(maxWidth: .infinity, minHeight: 197, maxHeight: 197, alignment: .center)
                    Spacer()
                        .frame(height: 30)
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    BackIconButton {closeIcon()}
                }
            }
            .navigationBarBackButtonHidden(true)
        }
        
    }
}

#Preview {
    AuthenticationView()
}
