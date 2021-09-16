//
//  Home.swift
//  appsstorage
//
//  Created by mac on 07/05/21.
//

import SwiftUI

struct Home: View {
    
    @State var selected = tabs[0]
    @Namespace var animation
    
    @State var show = false
    @State var show2 = false
    @State var newmenu = false
    @State var selectedItem : item = items[0]
    
    
    var body: some View {
        
        ZStack {
            
            VStack {
                
                HStack {
                    
                    Button(action: {}) {
                        Image(systemName: "line.horizontal.3.decrease")
                            .font(.system(size: 25, weight: .heavy))
                            .foregroundColor(.black)
                    }
                    //fitur belum tersedia
                    
                    Spacer(minLength: 0)
                    
                    Button(action: {} ) {
                        
                        Image("cc")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 45, height: 45)
                            .cornerRadius(15)
                            .onTapGesture {
                                withAnimation(.spring()){
                                    show2.toggle()
                                }
                            }
                        
                    }
                    
                }
                
                .padding(.vertical)
                .padding(.horizontal)
                
                ScrollView {
                    
                    VStack{
                        
                        HStack {
                            
                            VStack(alignment: .leading, spacing: 5) {
                                Text("Launching")
                                    .font(.title)
                                    .foregroundColor(.black)
                                
                                Text("Menu")
                                    .font(.largeTitle)
                                    .fontWeight(.heavy)
                                    .foregroundColor(.yellow)
                            }
                            .padding(.horizontal)
                            
                            Spacer(minLength: 0)
                        }
                        
                        
                        HStack(spacing: 0){
                            
                            ForEach(tabs,id: \.self){tab in
                                TabButton(title: tab, selected: $selected, animation: animation)
                                
                                if tabs.last !=
                                    tab{Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)}
                                
                                //fitur belum tersedia
                                
                            }
                        }
                        .padding()
                        .padding(.top,5)
                        
                        LazyVGrid(columns: Array(repeating: GridItem(.flexible(),spacing: 20), count: 2), spacing: 25){
                            
                            ForEach(items){
                                item in
                                CardView(item: item, animation: animation)
                                    .onTapGesture {
                                        withAnimation(.spring()){
                                            selectedItem = item
                                            show.toggle()
                                        }
                                    }
                                
                            }
                        }
                        .padding()
                    }
                }
                Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                
            }
            
            //opacity(show ? 0 : 1)
            
            if show{
                Detail(selectedItem: $selectedItem, show: $show, animation: animation)
            }
            
            if show2{
                myprofile(show2: $show2, animation: animation)
            }
        }
        .background(Color.white.ignoresSafeArea())
        
    }
}

var tabs = ["Main Course", "Side Dish"]









