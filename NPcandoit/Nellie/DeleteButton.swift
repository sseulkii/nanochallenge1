//
//  DeleteButton.swift
//  NPcandoit
//
//  Created by Seulki Lee on 2022/05/02.
//

import SwiftUI

struct DeleteButton: View {
    @State var showDetail: Bool = false
    @State private var displayPopupMessage: Bool = false

    let buttonLabel: String
    var body: some View {
        VStack {
            NavigationLink(destination: Work(), isActive: self.$showDetail) { EmptyView() }
            Button(action: {
                self.displayPopupMessage = true
            })
            {
                Text(buttonLabel).padding()
                    .frame(width: 300)
            .background(Color.buttongreen)
            .foregroundColor(Color.white)
            .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)            }
        }
        .alert(isPresented: $displayPopupMessage) {
            Alert(title: Text("생각을 지웠어요"), message: Text("더이상 생각하지 않도록 노력해요"), dismissButton: .default(Text("그럴게요"), action: {
                self.showDetail = true
            }))
        }
    }
}