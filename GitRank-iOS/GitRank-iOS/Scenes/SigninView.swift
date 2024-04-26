//
//  ContentView.swift
//  GitRank-iOS
//
//  Created by 홍승재 on 4/26/24.
//

import SwiftUI

struct SigninView: View {
    var body: some View {
        VStack {
            Image("logo")

            Spacer()

            githubSigninButton()
        }
    }

    @ViewBuilder
    func githubSigninButton() -> some View {
        Text("Github로 로그인")
    }
}

#Preview {
    SigninView()
}
