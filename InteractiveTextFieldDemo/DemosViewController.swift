//
//  DemosViewController.swift
//  InteractiveTextFieldDemo
//
//  Created by Sengthai Te on 4/6/22.
//

import UIKit
import InteractiveTextField

class DemosViewController: UIViewController, InteractiveTextFieldWithInlineDelegate {
    
    var scroll: UIScrollView!
    
    var textFieldUsingFrame0: InteractiveTextFieldWithInline!
    var textFieldUsingFrame1: InteractiveTextFieldWithInline!
    var textFieldUsingFrame2: InteractiveTextFieldWithInline!
    var textFieldUsingFrame3: InteractiveTextFieldWithInline!
    var textFieldUsingFrame4: InteractiveTextFieldWithInline!
    var textFieldUsingFrame5: InteractiveTextFieldWithInline!
    var textFieldUsingFrame6: InteractiveTextFieldWithInline!
    var textFieldUsingFrame7: InteractiveTextFieldWithInline!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Frame Examples"
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .close, target: self, action: #selector(donePreviewDemo))
        navigationItem.rightBarButtonItems = [UIBarButtonItem(title: "Next", style: .plain, target: self, action: #selector(tapNextDemo)), UIBarButtonItem(title: "Save Image", style: .plain, target: self, action: #selector(saveTextFieldImages))]
        view.backgroundColor = .systemBackground
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapDismiss)))
        setupScrollView()
        demoFrameBase()
    }
    
    @objc private func saveTextFieldImages() {
        [textFieldUsingFrame0, textFieldUsingFrame1, textFieldUsingFrame2, textFieldUsingFrame3, textFieldUsingFrame4, textFieldUsingFrame5, textFieldUsingFrame6, textFieldUsingFrame7].forEach { textField in
            textField?.saveImage()
        }
    }
    
    @objc private func donePreviewDemo() {
        navigationController?.dismiss(animated: true)
    }
    
    @objc private func tapNextDemo() {
        let viewController = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "DemosViewControllerConstraint")
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    @objc private func tapDismiss() {
        view.endEditing(true)
    }
    
    private func setupScrollView() {
        let scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: width, height: height))
        scroll = scrollView
        view.addSubview(scrollView)
    }
    
    private func demoFrameBase() {
        // Frame base
        /* First Example */
        let textFieldUsingFrameLabel0 = TitleLabel(frame: CGRect(x: 16, y: 24, width: width - 32, height: .leastNormalMagnitude), title: "1. let textFieldUsingFrame0 = InteractiveTextFieldWithInline(frame: frame0, config: config0);")
        let frame0 = CGRect(x: 16, y: textFieldUsingFrameLabel0.frame.maxY + 8, width: width - 32, height: 50)
        var config0 = InteractiveTextFieldConfig()
        config0.activeBorderColor = .black
        config0.activeBorderWidth = 1
        textFieldUsingFrame0 = InteractiveTextFieldWithInline(frame: frame0, config: config0)
        textFieldUsingFrame0.placeholder = "Placeholder"
        textFieldUsingFrame0.tintColor = .black
        textFieldUsingFrame0.autoActive = true

        /* Second Example */
        let textFieldUsingFrameLabel1 = TitleLabel(frame: CGRect(x: 16, y: textFieldUsingFrame0.frame.maxY + 8, width: width - 32, height: .leastNormalMagnitude), title: "2. let textFieldUsingFrame1 = InteractiveTextFieldWithInline();\ntextFieldUsingFrame1.frame = frame1;")
        let frame1 = CGRect(x: 16, y: textFieldUsingFrameLabel1.frame.maxY + 8, width: width - 32, height: 50)
        textFieldUsingFrame1 = InteractiveTextFieldWithInline()
        textFieldUsingFrame1.frame = frame1

        /* Third Example */
        let textFieldUsingFrameLabel2 = TitleLabel(frame: CGRect(x: 16, y: textFieldUsingFrame1.frame.maxY + 8, width: width - 32, height: .leastNormalMagnitude), title: "// Pre-define inline message \n3. let textFieldUsingFrame3 = InteractiveTextFieldWithInline();\ntextFieldUsingFrame3.frame = frame3;")
        let frame2 = CGRect(x: 16, y: textFieldUsingFrameLabel2.frame.maxY + 8, width: width - 32, height: 50)
        textFieldUsingFrame2 = InteractiveTextFieldWithInline()
        textFieldUsingFrame2.frame = frame2
        textFieldUsingFrame2.inlineMessage = "Pre-define inline message"

        /* Fourth Example */
        let textFieldUsingFrameLabel3 = TitleLabel(frame: CGRect(x: 16, y: textFieldUsingFrame2.frame.maxY + 24, width: width - 32, height: .leastNormalMagnitude), title: "// Pre-define validation message \n4. let textFieldUsingFrame4 = InteractiveTextFieldWithInline();\ntextFieldUsingFrame4.frame = frame4;")
        let frame3 = CGRect(x: 16, y: textFieldUsingFrameLabel3.frame.maxY + 8, width: width - 32, height: 50)
        textFieldUsingFrame3 = InteractiveTextFieldWithInline()
        textFieldUsingFrame3.frame = frame3
        textFieldUsingFrame3.inlineIconSize = CGSize(width: 20, height: 20)
        textFieldUsingFrame3.inlineLabelIcon = UIImage(systemName: "exclamationmark.triangle.fill")?.withRenderingMode(.alwaysTemplate)
        textFieldUsingFrame3.inlineLabel.tintColor = .red
        textFieldUsingFrame3.inlineLabelTextColor = .red
        textFieldUsingFrame3.spacing = 8
        textFieldUsingFrame3.showInlineBorder = true
        textFieldUsingFrame3.validationMessage = "Pre-define inline message. Inline default align top"
        
        /* Fifth Example */
        let textFieldUsingFrameLabel4 = TitleLabel(frame: CGRect(x: 16, y: textFieldUsingFrame3.frame.maxY + 56, width: width - 32, height: .leastNormalMagnitude), title: "// Show validation message when input is not digit \n5. let textFieldUsingFrame5 = InteractiveTextFieldWithInline();\ntextFieldUsingFrame5.frame = frame5;")
        let frame4 = CGRect(x: 16, y: textFieldUsingFrameLabel4.frame.maxY + 8, width: width - 32, height: 50)
        textFieldUsingFrame4 = InteractiveTextFieldWithInline()
        textFieldUsingFrame4.frame = frame4
        textFieldUsingFrame4.inlineIconSize = CGSize(width: 20, height: 20)
        textFieldUsingFrame4.inlineLabelIcon = UIImage(systemName: "exclamationmark.triangle.fill")?.withRenderingMode(.alwaysTemplate)
        textFieldUsingFrame4.inlineLabel.tintColor = .red
        textFieldUsingFrame4.inlineLabel.itemsAlignment = .center
        textFieldUsingFrame4.inlineLabelTextColor = .red
        textFieldUsingFrame4.spacing = 8
        textFieldUsingFrame4.placeholder = "Only accept number from 0-9"
        textFieldUsingFrame4.style = .material
        // isBlock true or disable inline will not show inline validation
        textFieldUsingFrame4.validationRegex = [(message: "The input \(textFieldUsingFrame4.text ?? "") is not valid. Please input digits from 0-9 only.", regularExpression: "^[0-9]*$", isBlock: true)]

        /* Sixth Example */
        let textFieldUsingFrameLabel5 = TitleLabel(frame: CGRect(x: 16, y: textFieldUsingFrame4.frame.maxY + 56, width: width - 32, height: .leastNormalMagnitude), title: "// Enable tap on textField \n6. let textFieldUsingFrame6 = InteractiveTextFieldWithInline(frame: frame6);")
        let frame5 = CGRect(x: 16, y: textFieldUsingFrameLabel5.frame.maxY + 8, width: width - 32, height: 50)
        textFieldUsingFrame5 = InteractiveTextFieldWithInline(frame: frame5)
        textFieldUsingFrame5.enableTapOnTextField = true
        textFieldUsingFrame5.delegate = self

        /* Seventh Example */
        let textFieldUsingFrameLabel6 = TitleLabel(frame: CGRect(x: 16, y: textFieldUsingFrame5.frame.maxY + 8, width: width - 32, height: .leastNormalMagnitude), title: "// Stick placeholder on top with leading icon \n7. let textFieldUsingFrame7 = InteractiveTextFieldWithInline(frame: frame7, config: config);")
        var config = InteractiveTextFieldConfig()
        config.placeholderStickTop = true
        config.leadingIconSize = CGSize(width: 12, height: 12)
        config.textRectLeftMargin = 8
        let frame6 = CGRect(x: 16, y: textFieldUsingFrameLabel6.frame.maxY + 8, width: width - 32, height: 50)
        textFieldUsingFrame6 = InteractiveTextFieldWithInline(frame: frame6, config: config)
        textFieldUsingFrame6.style = .material
        textFieldUsingFrame6.placeholder = "Stick me on top"
        textFieldUsingFrame6.leadingIcon = UIImage(systemName: "pencil.slash")
        
        /* Eight Example */
        let textFieldUsingFrameLabel7 = TitleLabel(frame: CGRect(x: 16, y: textFieldUsingFrame6.frame.maxY + 8, width: width - 32, height: .leastNormalMagnitude), title: "")
        let frame7 = CGRect(x: 16, y: textFieldUsingFrameLabel7.frame.maxY + 8, width: width - 32, height: 50)
        var config7 = InteractiveTextFieldConfig()
        config7.activeBorderColor = .black
        config7.activeBorderWidth = 1
        textFieldUsingFrame7 = InteractiveTextFieldWithInline(frame: frame7, config: config7)
        textFieldUsingFrame7.placeholder = "How much does it cost?"
        textFieldUsingFrame7.tintColor = .black
        textFieldUsingFrame7.prefixString = " $ "
        
        scroll.addSubview(textFieldUsingFrameLabel0)
        scroll.addSubview(textFieldUsingFrame0)

        scroll.addSubview(textFieldUsingFrameLabel1)
        scroll.addSubview(textFieldUsingFrame1)

        scroll.addSubview(textFieldUsingFrameLabel2)
        scroll.addSubview(textFieldUsingFrame2)

        scroll.addSubview(textFieldUsingFrameLabel3)
        scroll.addSubview(textFieldUsingFrame3)

        scroll.addSubview(textFieldUsingFrameLabel4)
        scroll.addSubview(textFieldUsingFrame4)

        scroll.addSubview(textFieldUsingFrameLabel5)
        scroll.addSubview(textFieldUsingFrame5)

        scroll.addSubview(textFieldUsingFrameLabel6)
        scroll.addSubview(textFieldUsingFrame6)
        
        scroll.addSubview(textFieldUsingFrameLabel6)
        scroll.addSubview(textFieldUsingFrame6)
        
        scroll.addSubview(textFieldUsingFrameLabel7)
        scroll.addSubview(textFieldUsingFrame7)
        
        scroll.contentSize = CGSize(width: width, height: textFieldUsingFrame7.frame.maxY + 20)
    }
    
    func didTapTextFieldMask(_ wrap: InteractiveTextFieldWithInline, textField: InteractiveTextField) {
        let alert = UIAlertController(title: "Tap On TextField", message: "You tapped on me!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        present(alert, animated: true)
    }
    
}

extension UIView {
    
    func saveImage() {
        UIImageWriteToSavedPhotosAlbum(getImage(), nil, nil, nil)
    }
    
    func getImage()-> UIImage {
        let renderer = UIGraphicsImageRenderer(size: bounds.size)
        return renderer.image { imageContext in
            drawHierarchy(in: bounds, afterScreenUpdates: true)
        }
    }
    
}

extension UIViewController {
    
    var bounds: CGRect {
        UIScreen.main.bounds
    }
    
    var width: CGFloat {
        bounds.width
    }
    
    var height: CGFloat {
        bounds.height
    }
}
