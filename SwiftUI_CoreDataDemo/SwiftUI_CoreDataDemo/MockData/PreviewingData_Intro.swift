//
//  PreviewingData_Intro.swift
//  SwiftUI_CoreDataDemo
//
//  Created by HubertMac on 29/09/2023.
//

import SwiftUI

struct PreviewingData_Intro: View {
    @FetchRequest(sortDescriptors: []) var firends: FetchedResults<FriendEntity>
    
    var body: some View {
        VStack {
            List(firends) { friend in
                Text("\(friend.firstName ?? "") \(friend.lastName ?? "")")
                
            }
        }
    }
}

#Preview {
    PreviewingData_Intro()
        .environment(\.managedObjectContext,
                      FriendsContainer.preview)
}
