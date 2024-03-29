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
                    .foregroundStyle(.teal)
                    .font(.system(size: 16))
            }
            
            if let message = configuration.message {
                message
                    .foregroundStyle(.purple)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 12))
            }
            
            ForEach(configuration.actions) { action in
                Button(action: action.handler) {
                    action.label()
                        .font(.system(size: 12))
                }
            }
            .padding(.top)
            
            
        }
        .frame(maxWidth: .infinity)
        .backgroundStyle(.thinMaterial)
        .overlay(alignment: .topTrailing) {
            Image(systemName: "xmark.diamond.fill")
                .symbolRenderingMode(.multicolor)
                .font(.title2)
                .alignmentGuide(.top) { $0[.top] + 5}
                .alignmentGuide(.trailing) { $0[.trailing] + 5 }
                .foregroundStyle(.secondary)
                .onTapGesture {
                    configuration.tip.invalidate(reason: .tipClosed)
                }
        }
        .padding()
    }
    
}
