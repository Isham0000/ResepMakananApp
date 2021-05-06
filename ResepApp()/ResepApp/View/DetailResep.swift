//
//  DetailResep.swift
//  ResepApp
//
//  Created by Isham on 14/04/21.
//

import SwiftUI

struct DetailResep: View {
    
    let isiDetail: resepMakanan
    var body: some View {
        
        ScrollView{
            VStack(alignment: .leading){
                
                Image(isiDetail.image)
                    .resizable()
                    .frame(width: 380, height: 250)
                    .cornerRadius(15)
                
                Text(isiDetail.namaResep)
                    .font(.system(size: 30))
                    .fontWeight(.bold)
                
                Text(isiDetail.komentar)
                    .frame(height: 70, alignment: .top)
                    .font(.body)
                    .padding(.top, 5)
                    .padding(.bottom, 10)
                
                Text("Bahan-bahan")
                    .font(.system(size: 25, weight: .bold))
                    .underline()
                    .padding(.top, 5)
                Text(isiDetail.deskripsi)
                    .font(.system(size: 20))
                    .fontWeight(.regular)
                
                Text("Langkah-langkah")
                    .font(.system(size: 25, weight: .bold))
                    .underline()
                    .padding(.top, 10)
                Text(isiDetail.deskripsi2)
                    .font(.system(size: 20))
                    .fontWeight(.regular)
                
                VStack(alignment: .leading){
                    Text("Rekomendasi untuk anda :")
                        .foregroundColor(.gray)
                        .font(.system(size: 25, weight: .semibold))
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            VStack{
                                Image("makanan1")
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .cornerRadius(10)
                                
                                Text("Daging sapi rendang")
                                    .font(.system(size: 17))
                                    .frame(width: 100)
                            }
                            .padding(.trailing, 20)
                            VStack{
                                Image("makanan2")
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .cornerRadius(10)
                                
                                Text("Kerak telor")
                                    .font(.system(size: 17))
                                    .frame(width: 100)
                            }
                            .padding(.trailing, 20)
                            VStack{
                                Image("makanan3")
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .cornerRadius(10)
                                
                                Text("Nasi uduk ")
                                    .font(.system(size: 17))
                                    .frame(width: 100)
                            }
                            
                        }
                        
                    }
                    
                    .padding(.trailing, -5)
                    
                    
                }
                .padding(.top, 40)
                
            }
            .padding()
            
        }
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct DetailResep_Previews: PreviewProvider {
    static var previews: some View {
        DetailResep(isiDetail: resepMakanan(id: 0, image: "", namaResep: "", komentar: "", deskripsi: "", deskripsi2: ""))
    }
}
