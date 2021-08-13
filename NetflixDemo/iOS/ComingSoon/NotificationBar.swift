//
//  NotificationBar.swift
//  NetflixDemo
//
//  Created by Ali Şahbaz on 31.07.2021.
//

import SwiftUI

struct NotificationBar: View {
    @Binding var showNotificationList: Bool
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            HStack {
                Image(systemName: "bell")
                Text("Notifications")
                    .bold()
                Spacer()
                Image(systemName: "chevron.right")
            }
            .font(.system(size: 18, weight: .bold))
        })
        .foregroundColor(.white)
        .padding()
    }
}

struct NotificationBar_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
            NotificationBar(showNotificationList: .constant(false))
        }
    }
}
