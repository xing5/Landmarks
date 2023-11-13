//
//  CategoryRow.swift
//  Landmarks
//
//  Created by Xing Wu on 11/12/23.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 15)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0, content: {
                    ForEach(items) { landmark in
                        NavigationLink {
                            LandmarkDetail(landmark: landmark)
                        } label: {
                            CategoryItem(landmark: landmark)
                        }
                    }
                })
            }
            .frame(height: 175)
        }
    }
}

#Preview {
    let landmarks = ModelData().landmarks
    return CategoryRow(categoryName: landmarks[0].category.rawValue,
                items: Array(landmarks.prefix(4)))
}
