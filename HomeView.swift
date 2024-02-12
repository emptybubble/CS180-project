//  HomeView.swift
//  UCRBay
//  Main homepage of App once Logged In with Link to Settings/Logout/Product Listing and Buying/ Messages

import SwiftUI

struct HomeView: View {
    let categories = ["Electronics", "Books", "Clothing"]
    let featuredProducts = ["Product 1", "Product 2", "Product 3"] //Samples

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Categories")
                        .font(.headline)
                        .padding()
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(categories, id: \.self) { category in
                                CategoryView(categoryName: category)
                            }
                        }
                    }
                    
                    Text("Featured Products")
                        .font(.headline)
                        .padding()
                    
                    ForEach(featuredProducts, id: \.self) { product in
                        Text(product)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(10)
                            .padding(.horizontal)
                    }
                }
                NavigationLink(destination: SettingsView()) {
                    Text("Settings")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .foregroundColor(.black)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding()
            }
            .navigationTitle("UCRBay")
        }
    }
}

struct CategoryView: View {
    let categoryName: String

    var body: some View {
        Text(categoryName)
            .padding()
            .frame(width: 100, height: 100)
            .background(Color.blue)
            .cornerRadius(10)
            .foregroundColor(.white)
    }
}
