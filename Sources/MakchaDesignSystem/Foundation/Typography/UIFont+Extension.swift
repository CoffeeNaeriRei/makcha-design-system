//
//  File.swift
//  
//
//  Created by yuncoffee on 5/6/24.
//

import Foundation
import UIKit

extension UIFont {
    /// UIFont를 Pretendard 폰트로 변경한다.
    ///
    /// - lineSpacing은 적용되지 않는다.
    /// - 일반적인 경우 font 단독 사용보다 attributedText 사용을 권장한다.
    ///
    /// ## Sample
    /// ```
    ///  let label = UILabel()
    ///  label.font = .pretendard(.bold, size: 24)
    /// ```
    ///
    public static func pretendard(_ weight: Pretendard, size: CGFloat) -> UIFont {
        UIFont(name: weight.rawValue, size: size) ?? .systemFont(ofSize: 16)
    }
    
    public static func dunggeummo(size: CGFloat) -> UIFont {
        UIFont(name: "DungGeunMo", size: size) ?? .systemFont(ofSize: 16)
    }
    
    public static func repet(size: CGFloat) -> UIFont {
        UIFont(name: "RepetitionScrolling", size: size) ?? .systemFont(ofSize: 16)
    }
}

extension NSAttributedString {
    /// UI에 Pretendard 폰트를 적용하기 위해 사용한다.
    ///
    /// - lineSpacing이 함께 적용된다.
    ///
    /// ## Sample
    /// ```
    ///  let label = UILabel()
    ///  label.attributedText = .pretendard("Contents", scale: .body)
    /// ```
    ///
    public static func pretendard(_ text: String, scale: Pretendard.FontScale) -> NSMutableAttributedString {
        let paragraphStyle = NSMutableParagraphStyle()
        let font: UIFont = UIFont(name: scale.fontWeight.rawValue, size: scale.fontSize) ?? .systemFont(ofSize: 16)
        
        paragraphStyle.lineSpacing = scale.lineHeight
        
        let attributes: [NSAttributedString.Key: Any] = [
            .paragraphStyle: paragraphStyle,
            .font: font
        ]
        
        return NSMutableAttributedString(string: text, attributes: attributes)
    }
    
    /// UI에 Pretendard 폰트를 적용하기 위해 사용한다.
    ///
    /// - lineSpacing이 함께 적용된다.
    /// - 기본 값으로 설정 된 weight를 변경할 수 있다.
    ///
    /// ## Sample
    /// ```
    ///  let label = UILabel()
    ///  label.attributedText = .pretendard("Contents", scale: .body, weight: .bold)
    /// ```
    ///
    public static func pretendard(_ text: String,
                              scale: Pretendard.FontScale,
                              weight: Pretendard? = nil) -> NSMutableAttributedString {
        let paragraphStyle = NSMutableParagraphStyle()
        var font: UIFont = .systemFont(ofSize: 16)
        
        if let weight = weight {
            font = UIFont(name: weight.rawValue, size: scale.fontSize) ?? .systemFont(ofSize: 16)
        } else {
            font = UIFont(name: scale.fontWeight.rawValue, size: scale.fontSize) ?? .systemFont(ofSize: 16)
        }
        
        paragraphStyle.lineSpacing = scale.lineHeight

        let attributes: [NSAttributedString.Key: Any] = [
            .paragraphStyle: paragraphStyle,
            .font: font
        ]

        return NSMutableAttributedString(string: text, attributes: attributes)
    }

    /// Pretendard 폰트를 사용해 UIFont만을 설정할 때 사용한다.
    ///
    /// - lineSpacing은 적용되지 않는다.
    /// - lineSpacing을 함께 적용하고자 할 경우 `pretendard(_ text: String, scale: Pretendard.FontScale)` 을 사용한다.
    ///
    /// ## Sample
    /// ```
    ///  let label = UILabel()
    ///  label.attributedText = .pretendard("Contents", weight: .bold, size: 16)
    /// ```
    ///
    public static func pretendard(_ text: String, weight: Pretendard, size: CGFloat) -> NSMutableAttributedString {
        let font: UIFont = UIFont(name: weight.rawValue, size: size) ?? .systemFont(ofSize: 16)
        
        let attributes: [NSAttributedString.Key: Any] = [
            .font: font
        ]
        
        return NSMutableAttributedString(string: text, attributes: attributes)
    }
    
    public static func dunggeummo(_ text: String, size: CGFloat) -> NSMutableAttributedString {
        let font: UIFont = UIFont(name: "DungGeunMo", size: size) ?? .systemFont(ofSize: 16)
        
        let attributes: [NSAttributedString.Key: Any] = [
            .font: font
        ]
        
        return NSMutableAttributedString(string: text, attributes: attributes)
    }
    
    public static func repet(_ text: String, size: CGFloat) -> NSMutableAttributedString {
        let font: UIFont = UIFont(name: "RepetitionScrolling", size: size) ?? .pretendard(.semiBold, size: size)
        
        let attributes: [NSAttributedString.Key: Any] = [
            .font: font
        ]
        
        return NSMutableAttributedString(string: text, attributes: attributes)
    }
}
