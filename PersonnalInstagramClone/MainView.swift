//
//  MainView.swift
//  PersonnalInstagramClone
//
//  Created by Elliot Knight on 01/02/2022.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            NavigationView {
                ContentView()
                    .navigationBarItems(leading: Text("Instagram")
                                            .font(.title.bold().italic())
                                        ,trailing: HStack {
                        Image(systemName: "plus.app")
                            .font(.title2)
                        Image(systemName: "heart")
                            .font(.title2)
                        Image(systemName: "paperplane")
                            .font(.title2)
                    })
            }
        }.tabItem {
            Image(systemName: "plus")
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
