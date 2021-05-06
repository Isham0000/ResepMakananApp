//
//  ListResep.swift
//  ResepApp
//
//  Created by Isham on 14/04/21.
//

import SwiftUI

struct Icon: View {
    var body: some View {
        
        ZStack{
            TabView{
                listResep()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                
                User()
                    .tabItem {
                        Image(systemName: "person.circle.fill")
                        Text("You")
                    }
                
            }
        }
    }
}

struct listResep_Previews: PreviewProvider {
    static var previews: some View {
        Icon()
    }
}

struct listResep: View {
    var body: some View {
        
        NavigationView {
            
            List(ModelResep){ data in
                NavigationLink(destination: DetailResep(isiDetail: data)){
                    
                    ZStack{
                        HStack{
                            Image(data.image)
                                .resizable()
                                .frame(width: 140, height: 160)
                                .cornerRadius(30)
                            
                            VStack(alignment: .leading, spacing: 10){
                                Text(data.namaResep)
                                    .font(.system(size: 18))
                                    .fontWeight(.bold)
                                
                                Text("Silahkan di klik untuk lebih detailnya")
                                    .font(.system(size: 12))
                                    .fontWeight(.regular)
                                
                                HStack{
                                    ForEach(0..<5) { data in
                                        Image(systemName: "star.fill")
                                            .foregroundColor(Color.orange)
                                            .frame(width: 15, height: 15)
                                            .padding(.top,2)
                                    }
                                }
                                
                                Button(action: {}){
                                    
                                    HStack{
                                        Text("Lihat selengkapnya")
                                            .font(.caption)
                                            .padding()
                                        
                                    }
                                    
                                }
                                .frame(width: 150, height: 30)
                                .background(Color.blue)
                                .foregroundColor(Color.white)
                                
                                .cornerRadius(10)
                                .padding(.top, 10)
                                
                            }
                            .padding(.leading)
                            
                        }
                        .padding(5)
                        
                        
                    }
                }
            }
            
            .navigationTitle("Resep Makanan")
            .navigationBarItems(trailing: NavigationLink(destination: User()){
                Image("propil")
                    .resizable()
                    .frame(width: 50, height: 40)
                    .clipShape(Circle())
                
            })
            
        }
    }
}

