//
//  FileView.swift
//  Nickmate-Learn
//
//  Created by Valia Smolin on 20.07.2024.
//

import SwiftUI

struct FileView: View {
    var body: some View {
        HStack {
            ScrollView (.horizontal, showsIndicators: false) {
                HStack {
                    HStack {
                        Text("Heавllodsfgssf;dlkg;lskdfjkhjkhkjhjkhjkhjkhjkhjkhjkhjkhkjhkjhk;ыфвавфыавыфавыфа")
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                            .layoutPriority(1)
                            .lineLimit(3)
                            .fixedSize(horizontal: false, vertical: true)
//                            .frame(width: 290)
                    }
//                    .frame(maxWidth: .infinity)
                    .padding(16)
                    .border(.red)
                    
                    HStack (spacing: 16) {
                        HStack(alignment: .center, spacing: 10) {
                            Image(systemName: "calendar")
                                .foregroundStyle(.white)
                        }
                        .padding(8)
                        .frame(width: 32, height: 32, alignment: .center)
                        .background(Color(red: 0, green: 0.48, blue: 1))
                        .cornerRadius(10)
                        HStack(alignment: .center, spacing: 10) {
                            Image(systemName: "trash")
                                .foregroundStyle(.white)
                        }
                        .padding(8)
                        .frame(width: 32, height: 32, alignment: .center)
                        .background(.red)
                        .cornerRadius(10)
                    }
                    .padding(.leading,16)
                    .padding(.trailing,16)
                }
                .padding(2)
                .frame(maxWidth: .infinity)
                .border(Color.blue)
            }
            .padding(16)
            .frame(maxWidth: .infinity)
//            .frame(width: 290)
            .border(Color.black)
            
        }
    }
}

#Preview {
    FileView()
}
