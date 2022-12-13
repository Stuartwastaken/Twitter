//
//  NotificationsView.swift
//  Twitter
//
//  Created by Stuart Ray on 5/19/22.
//

import SwiftUI

struct NotificationsView: View {
    @EnvironmentObject var authViewModel: AuthViewModel
    var body: some View {
        Button {
            authViewModel.signOut()
        } label: {
            Image(systemName: "arrow.left.square")
                .font(.headline)
                .foregroundColor(.gray)
        }
    }
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}
