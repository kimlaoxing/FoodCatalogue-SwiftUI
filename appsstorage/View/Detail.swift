//
//  Detail.swift
//  appsstorage
//
//  Created by mac on 15/05/21.
//

import SwiftUI

struct Detail: View {
    @Binding var selectedItem: item
    @Binding var show: Bool
    
    
    var animation: Namespace.ID
    
    @State var loadContent = false
    
    var body: some View {
        
        ScrollView {
            
            VStack {
                HStack(spacing: 25) {
                    Button(action: {withAnimation(.spring()){show.toggle()}
                    }) {
                        Image(systemName: "chevron.left")
                            .font(.title)
                            .foregroundColor(.black)
                    }
                    
                    Spacer()
                    
                    Button(action: {}){
                        
                        Image(systemName: "magnifyingglass")
                            .font(.title)
                            .foregroundColor(.black)
                    }
                    
                    Button(action: {}) {
                        Image(systemName: "bag")
                            .font(.title)
                            .foregroundColor(.black)
                        
                    }
                    
                }
                .padding()
                
                
                
            }
            VStack(spacing: 10) {
                
                Image(selectedItem.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .matchedGeometryEffect(id: "image\(selectedItem.id)", in: animation)
                    .padding()
                
                Text(selectedItem.title)
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                
                Text(selectedItem.price)
                    .font(.title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .padding(.top,4)
                HStack{
                    Text(selectedItem.rating)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .matchedGeometryEffect(id: "rating\(selectedItem.id)", in: animation)
                    
                    Spacer()
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        
                        Image(systemName: "suit.heart")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                    }
                    .matchedGeometryEffect(id: "heart\(selectedItem.id)", in: animation)
                }
                .padding()
            }
            .padding(.top,35)
            .background(
                Color(selectedItem.image)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .matchedGeometryEffect(id: "color\(_selectedItem.id)", in: animation)
                
                
            )
            .cornerRadius(15)
            .padding()
            
            VStack {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Ingredient")
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .font(.title2)
                        .padding(.leading)
                    
                    Text(selectedItem.bahan)
                        .foregroundColor(.white)
                        .font(Font.system (size:15, design: .default))
                        
                        .padding(.leading)
                        

                    
                    
                    
                }
                .padding(.vertical)
                .background(Color.black)
                .cornerRadius(15)
                
                
            }
            
            
            Button(action: {}) {
                Text("Add to Cart")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 100)
                    .background(Color.black)
                    .cornerRadius(15)
                
                //fitur belum tersedia
            }
            .padding(.vertical)
            
        }
        .background(Color.yellow.ignoresSafeArea())
    }
}







