//
//  ItemRow.swift
//  Stir Fry Master
//
//  Created by Aaron Southammavong on 7/2/20.
//  Copyright © 2020 Aaron Southammavong. All rights reserved.
//

import SwiftUI

struct ItemRow: View {
    
    var item: MenuItem
    
    var body: some View {
        HStack {
            Image(item.thumbnailImage)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray, linewidth: 2))

            VStack(alignment: .leading) {
                Text(item.name)
                    .font(.headline)
                Text(String("$\(item.price)"))
            }
        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: MenuItem.example)
    }
}
