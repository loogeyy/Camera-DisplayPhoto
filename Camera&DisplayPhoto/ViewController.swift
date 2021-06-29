//
//  ViewController.swift
//  Camera&DisplayPhoto
//
//  Created by Scholar on 6/29/21.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    
    //creates object from UIImagePickerController class and stores in variable imagePicker
    var imagePicker=UIImagePickerController()
    
    @IBAction func takeSelfieTapped(_ sender: UIButton) { //action button
        imagePicker.sourceType = .camera //opens camera
        present(imagePicker, animated: true, completion: nil) //presents imagePicker VC and animates it so it appears smoothly
    }
    
    
    @IBAction func photoLibraryTapped(_ sender: UIButton) { //action button
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
        
    }
    
    @IBOutlet weak var displayImage: UIImageView! //outlet
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage=info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            displayImage.image=selectedImage //assigns selected photo to the imageview
        }
        imagePicker.dismiss(animated: true, completion: nil) //closes the imagePicker VC
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate=self //tells object to give any info back to this class (self)
    }


}

