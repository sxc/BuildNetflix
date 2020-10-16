//
//  NotificationBar.swift
//  BuildNetflix
//
//  Created by Xiaochun Shen on 2020/10/16.
//

import SwiftUI

struct NotificationBar: View {
    
    @Binding var showNotificationList: Bool
    
    var body: some View {
        Button(action: {
            // Show notifacation list
            showNotificationList = true
        }, label: {
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
                .edgesIgnoringSafeArea(.all)
            NotificationBar(showNotificationList: .constant(false))
        }
    }
}
