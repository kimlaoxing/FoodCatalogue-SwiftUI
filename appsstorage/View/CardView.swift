//
//  CardView.swift
//  appsstorage
//
//  Created by mac on 13/05/21.
//

import SwiftUI

struct CardView: View {
    var item: item
    var animation: Namespace.ID
    var body: some View {
        
        VStack {
            
            HStack{
                Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                
                Text(item.price)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .padding(.vertical,8)
                    .padding(.horizontal,10)
                    .background(Color.black.opacity(0.5))
                    .cornerRadius(10)
            }
            
            Image(item.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .matchedGeometryEffect(id: "image\(item.id)", in: animation)
                .padding(.top,30)
                .padding(.bottom)
                .padding(.horizontal,10)
            
            Text(item.title)
                .fontWeight(.bold)
                .foregroundColor(.yellow)
                .matchedGeometryEffect(id: "title\(item.id)", in: animation)
            
            
            HStack{
                
                Button(action: {}) {
                    
                    Image(systemName: "suit.heart")
                        .font(.title2)
                        .foregroundColor(.white)
                    
                }
                .matchedGeometryEffect(id: "heart\(item.id)", in: animation)
                //.matchedGeometryEffect(id: "heart", in: )
                
                Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                
                Text(item.rating)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .matchedGeometryEffect(id: "rating\(item.id)", in: animation)
                
            }
            .padding()
            
            
            
        }
        .background(Color.black)
        .cornerRadius(15)
        
    }
    
}

