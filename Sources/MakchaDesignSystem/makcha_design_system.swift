// The Swift Programming Language
// https://docs.swift.org/swift-book

// Package - Test
import SwiftUI

public struct CoffeeFactoryFont {
    public static func registerFonts() {
        Pretendard.allCases.forEach { registerFont(bundle: .module, fontName: $0.rawValue, fontExtension: "otf") }
        registerFont(bundle: .module, fontName: "DungGeunMo", fontExtension: "otf")
        registerFont(bundle: .module, fontName: "repet___", fontExtension: "ttf")
    }
    
    fileprivate static func registerFont(bundle: Bundle, fontName: String, fontExtension: String) {
        guard let fontURL = bundle.url(forResource: fontName, withExtension: fontExtension),
              let fontDataProvider = CGDataProvider(url: fontURL as CFURL),
              let font = CGFont(fontDataProvider) else {
            fatalError("Could't create font from filename: \(fontName) with extension \(fontExtension)")
        }
        print(font)
        var error: Unmanaged<CFError>?
        CTFontManagerRegisterGraphicsFont(font, &error)
    }
}
