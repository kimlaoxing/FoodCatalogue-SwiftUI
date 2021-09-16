//
//  myprofile.swift
//  appsstorage
//
//  Created by mac on 19/05/21.
//

import SwiftUI

struct myprofile: View {
    
    @Binding var show2: Bool
    var animation: Namespace.ID
    
    var body: some View {
        
        VStack{
            
            HStack(spacing: 15){
                
                Button(action: {withAnimation(.spring()){show2.toggle()}
                })
                {
                    
                    Image(systemName: "chevron.left")
                        .font(.system(size: 22))
                        .foregroundColor(.black)
                }
                
                Text("Profile")
                    .font(.title)
                
                Spacer(minLength: 0)
                
                Button(action: {
                    
                }) {
                    
                    Text("Edit")
                        .foregroundColor(.white)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 25)
                        .background(Color.black)
                        .cornerRadius(10)
                    
                    //fitur belum tersedia
                }
            }
            .padding()
            
            HStack{
                
                VStack(spacing: 0){
                    
                    Rectangle()
                        .fill(Color.white)
                        .frame(width: 80, height: 3)
                        .zIndex(1)
                    
                    
                    Image("cc")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .padding(.top, 6)
                        .padding(.bottom, 4)
                        .padding(.horizontal, 8)
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 8, y: 8)
                        .shadow(color: Color.white.opacity(0.5), radius: 5, x: -8, y: -8)
                }
                
                VStack(alignment: .leading, spacing: 12){
                    
                    Text("Name")
                        .font(.title)
                        .foregroundColor(Color.black.opacity(0.8))
                    
                    Text("628**********")
                        .foregroundColor(Color.black.opacity(0.7))
                        .padding(.top, 8)
                    
                    Text("Email@gmail.com")
                        .foregroundColor(Color.black.opacity(0.7))
                }
                .padding(.leading, 20)
                
                Spacer(minLength: 0)
            }
            .padding(.horizontal, 20)
            .padding(.top, 10)
            
            Spacer(minLength: 20)
            
            VStack(spacing: 8){
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Identity")
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .font(.title2)
                    
                    Text("your detail profile")
                        .foregroundColor(.white)
                        .cornerRadius(15)
                        .font(Font.system (size:15, design: .default))
                        .frame(width: UIScreen.main.bounds.width - 50)
                    
                    
                }
                .padding(.vertical)
                .frame(width: UIScreen.main.bounds.width - 30 )
                .background(Color.black)
                .cornerRadius(15)
                
                
                
                //Fitur Belum tersedia
                Spacer(minLength: 0)
                
                Button(action: {}){
                    Text("Logout")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .frame(width: UIScreen.main.bounds.width - 100)
                        .background(Color.black)
                        
                    
                    //fitur belum tersedia
                }
                //Fitur Belum tersedia
                
            }
            
        }
        .background(Color.yellow.edgesIgnoringSafeArea(.all))
        
        
    }
    
}

