//
//  CustomTipStyle.swift
//  TipKitSample
//
//  Created by Melih Çulha on 24.01.2024.
//

import Foundation
import TipKit

struct CustomTipStyle: TipViewStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        VStack(spacing: 5) {
            if let image = configuration.image {
                image
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundStyle(.blue)
                    
            }
            
            if let title = configuration.title {
                title
                    .bold()
                    .textCase(.uppercase)
                    .font(.system(size: 16))
            }
            
            if let message = configuration.message {
                message
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 12))
            }
        }
        .frame(maxWidth: .infinity)
        .backgroundStyle(.thinMaterial)
        .overlay(alignment: .topTrailing) {
            Image(systemName: "multiply")
                .font(.title2)
                .alignmentGuide(.top) { $0[.top] - 5 }
                .alignmentGuide(.trailing) { $0[.trailing] + 5 }
                .foregroundStyle(.secondary)
                .onTapGesture {
                    configuration.tip.invalidate(reason: .tipClosed)
                }
        }
        .padding()
    }
    
}
