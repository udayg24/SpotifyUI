//
//  ContentView.swift
//  SpotifyClone
//
//  Created by Uday Gajera on 14/06/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var users: [User] = []
    @State private var products: [Product] = []
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(users) { user in
                    Text(user.firstName)
                }
            }
        }
        .padding()
        .task {
                await getData()
            }
        
    }
    
    private func getData() async {
        do {
            users = try await DataBaseHelper().getUsers()
            products = try await DataBaseHelper().getProducts()
        } catch  {
            
        }
    }
}

#Preview {
    ContentView()
}
