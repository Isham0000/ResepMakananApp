//
//  UserResep.swift
//  ResepApp
//
//  Created by Isham on 15/04/21.
//

import SwiftUI

struct User: View {
    var body: some View {
        VStack(alignment: .center, spacing: 30){
            Image("propil")
                .resizable()
                .clipShape(Circle())
                .frame(width: 180, height: 160)
            
            Text("Hidayatullah Gaming")
                .font(.title2)
                .fontWeight(.bold)
            
            HStack(spacing: 50){
                VStack{
                    Text("Followers")
                    Text("10k")
                        .fontWeight(.bold)
                }
                VStack{
                    Text("Resep yang dilihat")
                    Text("10x")
                        .fontWeight(.bold)
                }
                
            }
            
        }
        
    }
}

struct User_Previews: PreviewProvider {
    static var previews: some View {
        User()
    }
}
