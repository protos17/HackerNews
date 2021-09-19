//
//  ContentView.swift
//  H4CKER_NEWS
//
//  Created by Данил Чапаров on 19.09.2021.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkmanager = Networkmanager()
    
    var body: some View {
        NavigationView {
            List(networkmanager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url))
                {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationBarTitle("H4XOR NEWS")
        }
        .onAppear {
            self.networkmanager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

