

import UIKit

class AnimatedAnnotationView: BMKAnnotationView {
    
    // 属性
    var annotationImages: [UIImage]!
    var annotationImageView: UIImageView!
    
    override init!(annotation: BMKAnnotation!, reuseIdentifier: String!) {
        super.init(annotation: annotation, reuseIdentifier: reuseIdentifier)
        
        self.bounds = CGRectMake(0, 0, 32, 32)
        self.backgroundColor = UIColor.clearColor()
        
        annotationImageView = UIImageView(frame: bounds)
        annotationImageView.contentMode = UIViewContentMode.Center
        
        self.addSubview(annotationImageView)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setImages(images: [UIImage]) {
        annotationImages = images
        updateImageView()
    }
    
    func updateImageView() {
        if annotationImageView.isAnimating() {
            annotationImageView.stopAnimating()
        }
        annotationImageView.animationImages = annotationImages
        annotationImageView.animationDuration = 0.5 * NSTimeInterval(self.annotationImages.count)
        annotationImageView.animationRepeatCount = 0
        annotationImageView.startAnimating()
    }
}
