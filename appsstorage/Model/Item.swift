//
//  Item.swift
//  appsstorage
//
//  Created by mac on 11/05/21.
//

import SwiftUI

struct item: Identifiable {
    
    var id = UUID ().uuidString
    var title: String
    var price: String
    var rating: String
    var image: String
    var bahan: String
    
}
var items = [
    
    item(title: "Kinoko Kare Katsu", price: "38K", rating: "4.8", image: "k1", bahan: "Sajian Kare Jepang dengan based Jamur Champignon dan topping Katsu" ),
    item(title: "Kinoko Kare Tamago", price: "29K", rating: "4.0", image: "k2", bahan: "Sajian Kare Jepang dengan based Jamur Champignon dan topping Tamagoyaki" ),
    item(title: "Doramu Kinoko", price: "20K", rating: "4.7", image: "d1", bahan: "Jamur Chapignon di goreng dengan chrency, cocok menemani Kare kamu" ),
    item(title: "Yaki Curry", price: "45K", rating: "4.5", image: "y1", bahan: "Japanese Kare dengna Topping Mozarella yang dibakar hingga meleleh" ),
    item(title: "Japanese Bacon", price: "69K", rating: "4.8", image: "b1", bahan: "Kare dengan Topping Bacon pemulih energy harian" ),
    item(title: "Salmon Kare", price: "59K", rating: "4.8", image: "k4", bahan: "Kare dengan Topping Salmon High-quality" ),
    item(title: "Ramen Kare", price: "39K", rating: "4.7", image: "r1", bahan: "Bosan dengan Ramen konvensional? Cobain nih Ramen dengan Kuah Kare!" ),
    item(title: "Niku Sushi", price: "15K", rating: "3.9", image: "s1", bahan: "Sushi dengan balutan daging pilihan" ),
    item(title: "Salom Sushi", price: "15K", rating: "4.2", image: "s2", bahan: "Sushi dengan balutan Salon yang segar" ),
    item(title: "Ebi Shushi", price: "15K", rating: "4.5", image: "e1", bahan: "Sushi dengan balutan Ebi" )
]

