import Foundation
#if canImport(AppKit)
import AppKit
#endif
#if canImport(UIKit)
import UIKit
#endif
#if canImport(SwiftUI)
import SwiftUI
#endif
#if canImport(DeveloperToolsSupport)
import DeveloperToolsSupport
#endif

#if SWIFT_PACKAGE
private let resourceBundle = Foundation.Bundle.module
#else
private class ResourceBundleClass {}
private let resourceBundle = Foundation.Bundle(for: ResourceBundleClass.self)
#endif

// MARK: - Color Symbols -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension DeveloperToolsSupport.ColorResource {

}

// MARK: - Image Symbols -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension DeveloperToolsSupport.ImageResource {

    /// The "alice" asset catalog image resource.
    static let alice = DeveloperToolsSupport.ImageResource(name: "alice", bundle: resourceBundle)

    /// The "bob2" asset catalog image resource.
    static let bob2 = DeveloperToolsSupport.ImageResource(name: "bob2", bundle: resourceBundle)

    /// The "david" asset catalog image resource.
    static let david = DeveloperToolsSupport.ImageResource(name: "david", bundle: resourceBundle)

    /// The "emily1" asset catalog image resource.
    static let emily1 = DeveloperToolsSupport.ImageResource(name: "emily1", bundle: resourceBundle)

    /// The "exercise" asset catalog image resource.
    static let exercise = DeveloperToolsSupport.ImageResource(name: "exercise", bundle: resourceBundle)

    /// The "exercise12" asset catalog image resource.
    static let exercise12 = DeveloperToolsSupport.ImageResource(name: "exercise12", bundle: resourceBundle)

    /// The "exercise12322122" asset catalog image resource.
    static let exercise12322122 = DeveloperToolsSupport.ImageResource(name: "exercise12322122", bundle: resourceBundle)

    /// The "icons8-add-folder-94" asset catalog image resource.
    static let icons8AddFolder94 = DeveloperToolsSupport.ImageResource(name: "icons8-add-folder-94", bundle: resourceBundle)

    /// The "icons8-class-94" asset catalog image resource.
    static let icons8Class94 = DeveloperToolsSupport.ImageResource(name: "icons8-class-94", bundle: resourceBundle)

    /// The "icons8-contest-96" asset catalog image resource.
    static let icons8Contest96 = DeveloperToolsSupport.ImageResource(name: "icons8-contest-96", bundle: resourceBundle)

    /// The "icons8-mindfulness-64" asset catalog image resource.
    static let icons8Mindfulness64 = DeveloperToolsSupport.ImageResource(name: "icons8-mindfulness-64", bundle: resourceBundle)

    /// The "icons8-resource-64" asset catalog image resource.
    static let icons8Resource64 = DeveloperToolsSupport.ImageResource(name: "icons8-resource-64", bundle: resourceBundle)

    /// The "icons8-tutor-64" asset catalog image resource.
    static let icons8Tutor64 = DeveloperToolsSupport.ImageResource(name: "icons8-tutor-64", bundle: resourceBundle)

    /// The "istock" asset catalog image resource.
    static let istock = DeveloperToolsSupport.ImageResource(name: "istock", bundle: resourceBundle)

    /// The "jane" asset catalog image resource.
    static let jane = DeveloperToolsSupport.ImageResource(name: "jane", bundle: resourceBundle)

    /// The "john" asset catalog image resource.
    static let john = DeveloperToolsSupport.ImageResource(name: "john", bundle: resourceBundle)

    /// The "michael" asset catalog image resource.
    static let michael = DeveloperToolsSupport.ImageResource(name: "michael", bundle: resourceBundle)

    /// The "pool" asset catalog image resource.
    static let pool = DeveloperToolsSupport.ImageResource(name: "pool", bundle: resourceBundle)

    /// The "runrun" asset catalog image resource.
    static let runrun = DeveloperToolsSupport.ImageResource(name: "runrun", bundle: resourceBundle)

    /// The "samantha" asset catalog image resource.
    static let samantha = DeveloperToolsSupport.ImageResource(name: "samantha", bundle: resourceBundle)

    /// The "shutterstock" asset catalog image resource.
    static let shutterstock = DeveloperToolsSupport.ImageResource(name: "shutterstock", bundle: resourceBundle)

}

// MARK: - Color Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSColor {

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

}
#endif

#if canImport(SwiftUI)
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.Color {

}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

}
#endif

// MARK: - Image Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    /// The "alice" asset catalog image.
    static var alice: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .alice)
#else
        .init()
#endif
    }

    /// The "bob2" asset catalog image.
    static var bob2: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .bob2)
#else
        .init()
#endif
    }

    /// The "david" asset catalog image.
    static var david: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .david)
#else
        .init()
#endif
    }

    /// The "emily1" asset catalog image.
    static var emily1: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .emily1)
#else
        .init()
#endif
    }

    /// The "exercise" asset catalog image.
    static var exercise: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .exercise)
#else
        .init()
#endif
    }

    /// The "exercise12" asset catalog image.
    static var exercise12: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .exercise12)
#else
        .init()
#endif
    }

    /// The "exercise12322122" asset catalog image.
    static var exercise12322122: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .exercise12322122)
#else
        .init()
#endif
    }

    /// The "icons8-add-folder-94" asset catalog image.
    static var icons8AddFolder94: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .icons8AddFolder94)
#else
        .init()
#endif
    }

    /// The "icons8-class-94" asset catalog image.
    static var icons8Class94: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .icons8Class94)
#else
        .init()
#endif
    }

    /// The "icons8-contest-96" asset catalog image.
    static var icons8Contest96: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .icons8Contest96)
#else
        .init()
#endif
    }

    /// The "icons8-mindfulness-64" asset catalog image.
    static var icons8Mindfulness64: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .icons8Mindfulness64)
#else
        .init()
#endif
    }

    /// The "icons8-resource-64" asset catalog image.
    static var icons8Resource64: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .icons8Resource64)
#else
        .init()
#endif
    }

    /// The "icons8-tutor-64" asset catalog image.
    static var icons8Tutor64: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .icons8Tutor64)
#else
        .init()
#endif
    }

    /// The "istock" asset catalog image.
    static var istock: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .istock)
#else
        .init()
#endif
    }

    /// The "jane" asset catalog image.
    static var jane: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .jane)
#else
        .init()
#endif
    }

    /// The "john" asset catalog image.
    static var john: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .john)
#else
        .init()
#endif
    }

    /// The "michael" asset catalog image.
    static var michael: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .michael)
#else
        .init()
#endif
    }

    /// The "pool" asset catalog image.
    static var pool: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .pool)
#else
        .init()
#endif
    }

    /// The "runrun" asset catalog image.
    static var runrun: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .runrun)
#else
        .init()
#endif
    }

    /// The "samantha" asset catalog image.
    static var samantha: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .samantha)
#else
        .init()
#endif
    }

    /// The "shutterstock" asset catalog image.
    static var shutterstock: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .shutterstock)
#else
        .init()
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    /// The "alice" asset catalog image.
    static var alice: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .alice)
#else
        .init()
#endif
    }

    /// The "bob2" asset catalog image.
    static var bob2: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .bob2)
#else
        .init()
#endif
    }

    /// The "david" asset catalog image.
    static var david: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .david)
#else
        .init()
#endif
    }

    /// The "emily1" asset catalog image.
    static var emily1: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .emily1)
#else
        .init()
#endif
    }

    /// The "exercise" asset catalog image.
    static var exercise: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .exercise)
#else
        .init()
#endif
    }

    /// The "exercise12" asset catalog image.
    static var exercise12: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .exercise12)
#else
        .init()
#endif
    }

    /// The "exercise12322122" asset catalog image.
    static var exercise12322122: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .exercise12322122)
#else
        .init()
#endif
    }

    /// The "icons8-add-folder-94" asset catalog image.
    static var icons8AddFolder94: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .icons8AddFolder94)
#else
        .init()
#endif
    }

    /// The "icons8-class-94" asset catalog image.
    static var icons8Class94: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .icons8Class94)
#else
        .init()
#endif
    }

    /// The "icons8-contest-96" asset catalog image.
    static var icons8Contest96: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .icons8Contest96)
#else
        .init()
#endif
    }

    /// The "icons8-mindfulness-64" asset catalog image.
    static var icons8Mindfulness64: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .icons8Mindfulness64)
#else
        .init()
#endif
    }

    /// The "icons8-resource-64" asset catalog image.
    static var icons8Resource64: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .icons8Resource64)
#else
        .init()
#endif
    }

    /// The "icons8-tutor-64" asset catalog image.
    static var icons8Tutor64: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .icons8Tutor64)
#else
        .init()
#endif
    }

    /// The "istock" asset catalog image.
    static var istock: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .istock)
#else
        .init()
#endif
    }

    /// The "jane" asset catalog image.
    static var jane: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .jane)
#else
        .init()
#endif
    }

    /// The "john" asset catalog image.
    static var john: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .john)
#else
        .init()
#endif
    }

    /// The "michael" asset catalog image.
    static var michael: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .michael)
#else
        .init()
#endif
    }

    /// The "pool" asset catalog image.
    static var pool: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .pool)
#else
        .init()
#endif
    }

    /// The "runrun" asset catalog image.
    static var runrun: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .runrun)
#else
        .init()
#endif
    }

    /// The "samantha" asset catalog image.
    static var samantha: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .samantha)
#else
        .init()
#endif
    }

    /// The "shutterstock" asset catalog image.
    static var shutterstock: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .shutterstock)
#else
        .init()
#endif
    }

}
#endif

// MARK: - Thinnable Asset Support -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@available(watchOS, unavailable)
extension DeveloperToolsSupport.ColorResource {

    private init?(thinnableName: Swift.String, bundle: Foundation.Bundle) {
#if canImport(AppKit) && os(macOS)
        if AppKit.NSColor(named: NSColor.Name(thinnableName), bundle: bundle) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIColor(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(SwiftUI)
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.Color {

    private init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

    private init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}
#endif

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@available(watchOS, unavailable)
extension DeveloperToolsSupport.ImageResource {

    private init?(thinnableName: Swift.String, bundle: Foundation.Bundle) {
#if canImport(AppKit) && os(macOS)
        if bundle.image(forResource: NSImage.Name(thinnableName)) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIImage(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ImageResource?) {
#if !targetEnvironment(macCatalyst)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ImageResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

