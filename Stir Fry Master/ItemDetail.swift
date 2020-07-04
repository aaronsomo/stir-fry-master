//
//  ItemDetail.swift
//  Stir Fry Master
//
//  Created by Aaron Southammavong on 7/3/20.
//  Copyright © 2020 Aaron Southammavong. All rights reserved.
//

import SwiftUI

struct ItemDetail: View {
    
    var item: MenuItem
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage)
                Text("Photo: \(item.photoCredit)")
                    .padding(4)
                    .background(Color.black.opacity(0.65))
                    .cornerRadius(5)
                    .font(.caption)
                    .foregroundColor(.white)
                    .offset(x: -30, y: -10)
            }
            Text(item.description)
            .padding()
            
            Spacer()
            
        }.navigationBarTitle(Text(item.name), displayMode: .inline)
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ItemDetail(item:MenuItem.example)
            
        }
    }
}
