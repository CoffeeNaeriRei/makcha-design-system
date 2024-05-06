//
//  File.swift
//  
//
//  Created by yuncoffee on 5/6/24.
//

#if DEBUG
import Foundation
import SwiftUI

final class TestView: UIView {
    let label = UILabel()
    let label2 = UILabel()
    let label3 = UILabel()
    
    init() {
        super.init(frame: .zero)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func layout() {
        label.translatesAutoresizingMaskIntoConstraints = false
        label2.translatesAutoresizingMaskIntoConstraints = false
        label3.translatesAutoresizingMaskIntoConstraints = false

        label.attributedText = .pretendard("HELLO WORLD\nHELLO WORLD",
                                              scale: .largeTitle,
                                              weight: .light
        )
        
        label2.attributedText = .pretendard("Test\nTest", scale: .title)
        label3.attributedText = .pretendard("What The\nWhat", weight: .bold, size: 54)
        
        label.numberOfLines = 0
        label2.numberOfLines = 0
        label3.numberOfLines = 0
        
        label2.layer.borderWidth = 1
        label3.layer.borderWidth = 1
                
        let temp: NSMutableAttributedString = .pretendard("What The\nWhat", weight: .bold, size: 54)

        let range = NSRange(location: 0, length: 4)
        let attributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.red
        ]
        temp.addAttributes(attributes, range: range)

        label3.attributedText = temp
        
        addSubview(label)
        addSubview(label2)
        addSubview(label3)
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            label2.topAnchor.constraint(equalTo: label.bottomAnchor),
            label2.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            label3.topAnchor.constraint(equalTo: label2.bottomAnchor),
            label3.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])
    }
}

struct TestView_Preview: PreviewProvider {
    static var previews: some View {
        let _ = {
            CoffeeFactoryFont.registerFonts()
        }()
        
        ViewPreview {
            TestView()
        }
    }
}

struct ViewPreview: UIViewRepresentable {
    
    var viewBuilder: () -> UIView
    
    init(_ viewControllerBuilder: @escaping () -> UIView) {
        self.viewBuilder = viewControllerBuilder
    }
    
    func makeUIView(context: Context) -> some UIView {
        viewBuilder()
    }
    
    func updateUIView(_ uiViewController: UIViewType, context: Context) {
        // Nothing to do here
    }
}

struct ViewControllerPreview: UIViewControllerRepresentable {
    
    var viewControllerBuilder: () -> UIViewController
    
    init(_ viewControllerBuilder: @escaping () -> UIViewController) {
        self.viewControllerBuilder = viewControllerBuilder
    }
    
    func makeUIViewController(context: Context) -> some UIViewController {
        viewControllerBuilder()
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        // Nothing to do here
    }
}
#endif
