//
//  BackIconButton.swift
//  Nickmate-Learn
//
//  Created by Valia Smolin on 12.07.2024.
//

import SwiftUI

struct BackIconButton: View {
    var action: () -> Void
    var body: some View {
        Button {
            action()
        }
    label: {
        HStack {
            Image(systemName: "chevron.backward")
                .resizable()
                .imageScale(.large)
                .fontWeight(.medium)
                
//            Text("Назад")
        }
        .foregroundStyle(Color(red: 0, green: 0.48, blue: 1))
        
    }
    }
}
