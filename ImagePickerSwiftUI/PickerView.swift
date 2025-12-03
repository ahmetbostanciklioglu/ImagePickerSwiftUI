import SwiftUI

/// UIKit View wrapper to transform to the SwiftUI
struct PickerView: UIViewControllerRepresentable {
    /// Data binding
    @Binding var shown: Bool
    @Binding var imgData: Data
    /// Creating a Image Picker Controller
    func makeUIViewController(context: UIViewControllerRepresentableContext<PickerView>) -> UIImagePickerController {
        let controller = UIImagePickerController()
        controller.sourceType = .photoLibrary
        controller.delegate = context.coordinator
        return controller
    }
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) { }
    /// Making Cordinator in the PickerView
    func makeCoordinator() -> Coordinator {
        return PickerView.Coordinator(imgData1: $imgData, shown1: $shown)
    }
    /// SwiftUI (struct) and UIKit (class and delegate) works different, cordinator bridging between SwiftUI and UIKit to understand each oher
    class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        @Binding var imgData: Data
        @Binding var shown: Bool
        
        init(imgData1: Binding<Data>, shown1: Binding<Bool>) {
            _imgData = imgData1
            _shown = shown1
        }
        /// When User pressed cancell button it works
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            shown.toggle()
        }

        /// When user picked image, this method works
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            let image = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
            imgData = image.jpegData(compressionQuality: 0.8)!
            shown.toggle()
        }
    }
}
