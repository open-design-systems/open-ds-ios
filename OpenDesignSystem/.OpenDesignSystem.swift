import SwiftUI

enum OpenColors {

private static var isLightMode: Bool { UIScreen.main.traitCollection.userInterfaceStyle == .light }

    static let surfaceContainerHighestLight: Color = Color(.sRGB, red: 0.8862745098039215, green: 0.8901960784313725, blue: 0.8470588235294118, opacity: 0.00392156862745098)
    static let surfaceContainerHighestDark: Color = Color(.sRGB, red: 0.2, green: 0.21176470588235294, blue: 0.1803921568627451, opacity: 0.00392156862745098)
    static var surfaceContainerHighest: Color { isLightMode ? surfaceContainerHighestLight : surfaceContainerHighestDark } 
    static let onSurfaceLight: Color = Color(.sRGB, red: 0.10196078431372549, green: 0.10980392156862745, blue: 0.08627450980392157, opacity: 0.00392156862745098)
    static let onSurfaceDark: Color = Color(.sRGB, red: 0.8862745098039215, green: 0.8901960784313725, blue: 0.8470588235294118, opacity: 0.00392156862745098)
    static var onSurface: Color { isLightMode ? onSurfaceLight : onSurfaceDark } 
    static let surfaceBrightLight: Color = Color(.sRGB, red: 0.9764705882352941, green: 0.9803921568627451, blue: 0.9372549019607843, opacity: 0.00392156862745098)
    static let surfaceBrightDark: Color = Color(.sRGB, red: 0.2196078431372549, green: 0.22745098039215686, blue: 0.19607843137254902, opacity: 0.00392156862745098)
    static var surfaceBright: Color { isLightMode ? surfaceBrightLight : surfaceBrightDark } 
    static let onPrimaryContainerLight: Color = Color(.sRGB, red: 0.06274509803921569, green: 0.12549019607843137, blue: 0.0, opacity: 0.00392156862745098)
    static let onPrimaryContainerDark: Color = Color(.sRGB, red: 0.803921568627451, green: 0.9294117647058824, blue: 0.6392156862745098, opacity: 0.00392156862745098)
    static var onPrimaryContainer: Color { isLightMode ? onPrimaryContainerLight : onPrimaryContainerDark } 
    static let onTertiaryLight: Color = Color(.sRGB, red: 1.0, green: 1.0, blue: 1.0, opacity: 0.00392156862745098)
    static let onTertiaryDark: Color = Color(.sRGB, red: 0.0, green: 0.21568627450980393, blue: 0.20784313725490197, opacity: 0.00392156862745098)
    static var onTertiary: Color { isLightMode ? onTertiaryLight : onTertiaryDark } 
    static let tertiaryContainerLight: Color = Color(.sRGB, red: 0.7372549019607844, green: 0.9254901960784314, blue: 0.9058823529411765, opacity: 0.00392156862745098)
    static let tertiaryContainerDark: Color = Color(.sRGB, red: 0.12156862745098039, green: 0.3058823529411765, blue: 0.29411764705882354, opacity: 0.00392156862745098)
    static var tertiaryContainer: Color { isLightMode ? tertiaryContainerLight : tertiaryContainerDark } 
    static let onSecondaryContainerLight: Color = Color(.sRGB, red: 0.08235294117647059, green: 0.11764705882352941, blue: 0.043137254901960784, opacity: 0.00392156862745098)
    static let onSecondaryContainerDark: Color = Color(.sRGB, red: 0.8627450980392157, green: 0.9058823529411765, blue: 0.7843137254901961, opacity: 0.00392156862745098)
    static var onSecondaryContainer: Color { isLightMode ? onSecondaryContainerLight : onSecondaryContainerDark } 
    static let surfaceDimLight: Color = Color(.sRGB, red: 0.8549019607843137, green: 0.8588235294117647, blue: 0.8156862745098039, opacity: 0.00392156862745098)
    static let surfaceDimDark: Color = Color(.sRGB, red: 0.07058823529411765, green: 0.0784313725490196, blue: 0.054901960784313725, opacity: 0.00392156862745098)
    static var surfaceDim: Color { isLightMode ? surfaceDimLight : surfaceDimDark } 
    static let inverseOnSurfaceLight: Color = Color(.sRGB, red: 0.9450980392156862, green: 0.9490196078431372, blue: 0.9019607843137255, opacity: 0.00392156862745098)
    static let inverseOnSurfaceDark: Color = Color(.sRGB, red: 0.1843137254901961, green: 0.19215686274509805, blue: 0.16470588235294117, opacity: 0.00392156862745098)
    static var inverseOnSurface: Color { isLightMode ? inverseOnSurfaceLight : inverseOnSurfaceDark } 
    static let onSurfaceVariantLight: Color = Color(.sRGB, red: 0.26666666666666666, green: 0.2823529411764706, blue: 0.23921568627450981, opacity: 0.00392156862745098)
    static let onSurfaceVariantDark: Color = Color(.sRGB, red: 0.7725490196078432, green: 0.7843137254901961, blue: 0.7294117647058823, opacity: 0.00392156862745098)
    static var onSurfaceVariant: Color { isLightMode ? onSurfaceVariantLight : onSurfaceVariantDark } 
    static let onSecondaryLight: Color = Color(.sRGB, red: 1.0, green: 1.0, blue: 1.0, opacity: 0.00392156862745098)
    static let onSecondaryDark: Color = Color(.sRGB, red: 0.16470588235294117, green: 0.2, blue: 0.11764705882352941, opacity: 0.00392156862745098)
    static var onSecondary: Color { isLightMode ? onSecondaryLight : onSecondaryDark } 
    static let errorContainerLight: Color = Color(.sRGB, red: 1.0, green: 0.8549019607843137, blue: 0.8392156862745098, opacity: 0.00392156862745098)
    static let errorContainerDark: Color = Color(.sRGB, red: 0.5764705882352941, green: 0.0, blue: 0.0392156862745098, opacity: 0.00392156862745098)
    static var errorContainer: Color { isLightMode ? errorContainerLight : errorContainerDark } 
    static let tertiaryLight: Color = Color(.sRGB, red: 0.2196078431372549, green: 0.4, blue: 0.38823529411764707, opacity: 0.00392156862745098)
    static let tertiaryDark: Color = Color(.sRGB, red: 0.6274509803921569, green: 0.8156862745098039, blue: 0.796078431372549, opacity: 0.00392156862745098)
    static var tertiary: Color { isLightMode ? tertiaryLight : tertiaryDark } 
    static let backgroundLight: Color = Color(.sRGB, red: 0.9764705882352941, green: 0.9803921568627451, blue: 0.9372549019607843, opacity: 0.00392156862745098)
    static let backgroundDark: Color = Color(.sRGB, red: 0.07058823529411765, green: 0.0784313725490196, blue: 0.054901960784313725, opacity: 0.00392156862745098)
    static var background: Color { isLightMode ? backgroundLight : backgroundDark } 
    static let errorLight: Color = Color(.sRGB, red: 0.7294117647058823, green: 0.10196078431372549, blue: 0.10196078431372549, opacity: 0.00392156862745098)
    static let errorDark: Color = Color(.sRGB, red: 1.0, green: 0.7058823529411765, blue: 0.6705882352941176, opacity: 0.00392156862745098)
    static var error: Color { isLightMode ? errorLight : errorDark } 
    static let outlineLight: Color = Color(.sRGB, red: 0.4588235294117647, green: 0.4745098039215686, blue: 0.4235294117647059, opacity: 0.00392156862745098)
    static let outlineDark: Color = Color(.sRGB, red: 0.5607843137254902, green: 0.5725490196078431, blue: 0.5215686274509804, opacity: 0.00392156862745098)
    static var outline: Color { isLightMode ? outlineLight : outlineDark } 
    static let secondaryLight: Color = Color(.sRGB, red: 0.34509803921568627, green: 0.3843137254901961, blue: 0.28627450980392155, opacity: 0.00392156862745098)
    static let secondaryDark: Color = Color(.sRGB, red: 0.7490196078431373, green: 0.796078431372549, blue: 0.6784313725490196, opacity: 0.00392156862745098)
    static var secondary: Color { isLightMode ? secondaryLight : secondaryDark } 
    static let outlineVariantLight: Color = Color(.sRGB, red: 0.7725490196078432, green: 0.7843137254901961, blue: 0.7294117647058823, opacity: 0.00392156862745098)
    static let outlineVariantDark: Color = Color(.sRGB, red: 0.26666666666666666, green: 0.2823529411764706, blue: 0.23921568627450981, opacity: 0.00392156862745098)
    static var outlineVariant: Color { isLightMode ? outlineVariantLight : outlineVariantDark } 
    static let primaryContainerLight: Color = Color(.sRGB, red: 0.803921568627451, green: 0.9294117647058824, blue: 0.6392156862745098, opacity: 0.00392156862745098)
    static let primaryContainerDark: Color = Color(.sRGB, red: 0.20784313725490197, green: 0.3058823529411765, blue: 0.08627450980392157, opacity: 0.00392156862745098)
    static var primaryContainer: Color { isLightMode ? primaryContainerLight : primaryContainerDark } 
    static let onErrorLight: Color = Color(.sRGB, red: 1.0, green: 1.0, blue: 1.0, opacity: 0.00392156862745098)
    static let onErrorDark: Color = Color(.sRGB, red: 0.4117647058823529, green: 0.0, blue: 0.0196078431372549, opacity: 0.00392156862745098)
    static var onError: Color { isLightMode ? onErrorLight : onErrorDark } 
    static let surfaceLight: Color = Color(.sRGB, red: 0.9764705882352941, green: 0.9803921568627451, blue: 0.9372549019607843, opacity: 0.00392156862745098)
    static let surfaceDark: Color = Color(.sRGB, red: 0.07058823529411765, green: 0.0784313725490196, blue: 0.054901960784313725, opacity: 0.00392156862745098)
    static var surface: Color { isLightMode ? surfaceLight : surfaceDark } 
    static let scrimLight: Color = Color(.sRGB, red: 0.0, green: 0.0, blue: 0.0, opacity: 0.00392156862745098)
    static let scrimDark: Color = Color(.sRGB, red: 0.0, green: 0.0, blue: 0.0, opacity: 0.00392156862745098)
    static var scrim: Color { isLightMode ? scrimLight : scrimDark } 
    static let surfaceVariantLight: Color = Color(.sRGB, red: 0.8549019607843137, green: 0.8588235294117647, blue: 0.8156862745098039, opacity: 0.00392156862745098)
    static let surfaceVariantDark: Color = Color(.sRGB, red: 0.07058823529411765, green: 0.0784313725490196, blue: 0.054901960784313725, opacity: 0.00392156862745098)
    static var surfaceVariant: Color { isLightMode ? surfaceVariantLight : surfaceVariantDark } 
    static let inversePrimaryLight: Color = Color(.sRGB, red: 0.6941176470588235, green: 0.8196078431372549, blue: 0.5411764705882353, opacity: 0.00392156862745098)
    static let inversePrimaryDark: Color = Color(.sRGB, red: 0.2980392156862745, green: 0.4, blue: 0.16862745098039217, opacity: 0.00392156862745098)
    static var inversePrimary: Color { isLightMode ? inversePrimaryLight : inversePrimaryDark } 
    static let inverseSurfaceLight: Color = Color(.sRGB, red: 0.1843137254901961, green: 0.19215686274509805, blue: 0.16470588235294117, opacity: 0.00392156862745098)
    static let inverseSurfaceDark: Color = Color(.sRGB, red: 0.8862745098039215, green: 0.8901960784313725, blue: 0.8470588235294118, opacity: 0.00392156862745098)
    static var inverseSurface: Color { isLightMode ? inverseSurfaceLight : inverseSurfaceDark } 
    static let secondaryContainerLight: Color = Color(.sRGB, red: 0.8627450980392157, green: 0.9058823529411765, blue: 0.7843137254901961, opacity: 0.00392156862745098)
    static let secondaryContainerDark: Color = Color(.sRGB, red: 0.25098039215686274, green: 0.2901960784313726, blue: 0.2, opacity: 0.00392156862745098)
    static var secondaryContainer: Color { isLightMode ? secondaryContainerLight : secondaryContainerDark } 
    static let surfaceContainerLowLight: Color = Color(.sRGB, red: 0.9529411764705882, green: 0.9568627450980393, blue: 0.9137254901960784, opacity: 0.00392156862745098)
    static let surfaceContainerLowDark: Color = Color(.sRGB, red: 0.10196078431372549, green: 0.10980392156862745, blue: 0.08627450980392157, opacity: 0.00392156862745098)
    static var surfaceContainerLow: Color { isLightMode ? surfaceContainerLowLight : surfaceContainerLowDark } 
    static let primaryLight: Color = Color(.sRGB, red: 0.2980392156862745, green: 0.4, blue: 0.16862745098039217, opacity: 0.00392156862745098)
    static let primaryDark: Color = Color(.sRGB, red: 0.6941176470588235, green: 0.8196078431372549, blue: 0.5411764705882353, opacity: 0.00392156862745098)
    static var primary: Color { isLightMode ? primaryLight : primaryDark } 
    static let surfaceContainerLight: Color = Color(.sRGB, red: 0.9333333333333333, green: 0.9372549019607843, blue: 0.8901960784313725, opacity: 0.00392156862745098)
    static let surfaceContainerDark: Color = Color(.sRGB, red: 0.11764705882352941, green: 0.12549019607843137, blue: 0.10196078431372549, opacity: 0.00392156862745098)
    static var surfaceContainer: Color { isLightMode ? surfaceContainerLight : surfaceContainerDark } 
    static let surfaceContainerHighLight: Color = Color(.sRGB, red: 0.9098039215686274, green: 0.9137254901960784, blue: 0.8705882352941177, opacity: 0.00392156862745098)
    static let surfaceContainerHighDark: Color = Color(.sRGB, red: 0.1568627450980392, green: 0.16862745098039217, blue: 0.1411764705882353, opacity: 0.00392156862745098)
    static var surfaceContainerHigh: Color { isLightMode ? surfaceContainerHighLight : surfaceContainerHighDark } 
    static let onTertiaryContainerLight: Color = Color(.sRGB, red: 0.0, green: 0.12549019607843137, blue: 0.11764705882352941, opacity: 0.00392156862745098)
    static let onTertiaryContainerDark: Color = Color(.sRGB, red: 0.7372549019607844, green: 0.9254901960784314, blue: 0.9058823529411765, opacity: 0.00392156862745098)
    static var onTertiaryContainer: Color { isLightMode ? onTertiaryContainerLight : onTertiaryContainerDark } 
    static let onErrorContainerLight: Color = Color(.sRGB, red: 0.2549019607843137, green: 0.0, blue: 0.00784313725490196, opacity: 0.00392156862745098)
    static let onErrorContainerDark: Color = Color(.sRGB, red: 1.0, green: 0.8549019607843137, blue: 0.8392156862745098, opacity: 0.00392156862745098)
    static var onErrorContainer: Color { isLightMode ? onErrorContainerLight : onErrorContainerDark } 
    static let onBackgroundLight: Color = Color(.sRGB, red: 0.10196078431372549, green: 0.10980392156862745, blue: 0.08627450980392157, opacity: 0.00392156862745098)
    static let onBackgroundDark: Color = Color(.sRGB, red: 0.8862745098039215, green: 0.8901960784313725, blue: 0.8470588235294118, opacity: 0.00392156862745098)
    static var onBackground: Color { isLightMode ? onBackgroundLight : onBackgroundDark } 
    static let onPrimaryLight: Color = Color(.sRGB, red: 1.0, green: 1.0, blue: 1.0, opacity: 0.00392156862745098)
    static let onPrimaryDark: Color = Color(.sRGB, red: 0.12156862745098039, green: 0.21568627450980393, blue: 0.00392156862745098, opacity: 0.00392156862745098)
    static var onPrimary: Color { isLightMode ? onPrimaryLight : onPrimaryDark } 
    static let surfaceContainerLowestLight: Color = Color(.sRGB, red: 1.0, green: 1.0, blue: 1.0, opacity: 0.00392156862745098)
    static let surfaceContainerLowestDark: Color = Color(.sRGB, red: 0.047058823529411764, green: 0.058823529411764705, blue: 0.03529411764705882, opacity: 0.00392156862745098)
    static var surfaceContainerLowest: Color { isLightMode ? surfaceContainerLowestLight : surfaceContainerLowestDark } 
}

enum OpenSpacing {
    static let lg: CGFloat = 24.0
    static let xs: CGFloat = 4.0
    static let xl: CGFloat = 32.0
    static let md: CGFloat = 16.0
    static let sm: CGFloat = 8.0
}

enum OpenTypography {
    static let labelMedium: UIFont = UIFont(name: "Bold", size: 12)!
    static let bodyLarge: UIFont = UIFont(name: "Regular", size: 16)!
    static let headlineMedium: UIFont = UIFont(name: "Regular", size: 28)!
    static let displayLarge: UIFont = UIFont(name: "RobotoRegular", size: 57)!
    static let labelLarge: UIFont = UIFont(name: "Bold", size: 14)!
    static let titleMedium: UIFont = UIFont(name: "Medium", size: 16)!
    static let displayMedium: UIFont = UIFont(name: "RobotoRegular", size: 45)!
    static let headlineLarge: UIFont = UIFont(name: "Regular", size: 32)!
    static let bodyMedium: UIFont = UIFont(name: "Regular", size: 14)!
    static let displaySmall: UIFont = UIFont(name: "Regular", size: 36)!
    static let headlineSmall: UIFont = UIFont(name: "Regular", size: 24)!
    static let bodySmall: UIFont = UIFont(name: "Regular", size: 12)!
    static let labelSmall: UIFont = UIFont(name: "Medium", size: 11)!
    static let titleLarge: UIFont = UIFont(name: "Regular", size: 22)!
    static let titleSmall: UIFont = UIFont(name: "Medium", size: 14)!
}

public struct Surface {
    public let borderColor: Color
    public let borderRadius: CGFloat
    public let borderWidth: CGFloat
    public let boxShadow: Shadow
    public let backgroundColor: Color

    public init(borderColor: Color, borderRadius: CGFloat, borderWidth: CGFloat, boxShadow: Shadow, backgroundColor: Color) {
        self.borderColor = borderColor
        self.borderRadius = borderRadius
        self.borderWidth = borderWidth
        self.boxShadow = boxShadow
        self.backgroundColor = backgroundColor
    }
}

enum OpenSurface {
    static let box: Surface = Surface(borderColor: OpenColors.background, borderRadius: 5.0, borderWidth: 1.0, boxShadow: OpenShadows.level5, backgroundColor: OpenColors.background)
}

public struct Shadow {
    public let elevation: CGFloat
    public let shadowColor: Color
    public let shadowOpacity: CGFloat
    public let shadowOffset: CGSize
    public let shadowRadius: CGFloat

    public init(
        elevation: CGFloat,
        shadowColor: Color,
        shadowOpacity: CGFloat,
        shadowOffset: CGSize,
        shadowRadius: CGFloat
    ) {
        self.elevation = elevation
        self.shadowColor = shadowColor
        self.shadowOpacity = shadowOpacity
        self.shadowOffset = shadowOffset
        self.shadowRadius = shadowRadius
    }
}

enum OpenShadows {
    static let level5: Shadow = Shadow(elevation: 12.0, shadowColor: OpenColors.onSurface, shadowOpacity: 0.5, shadowOffset: CGSize(width: 0.0, height: 0.0), shadowRadius: 1.0)
    static let level1: Shadow = Shadow(elevation: 1.0, shadowColor: OpenColors.onSurface, shadowOpacity: 0.5, shadowOffset: CGSize(width: 0.0, height: 0.0), shadowRadius: 0.0)
    static let level0: Shadow = Shadow(elevation: 0.0, shadowColor: OpenColors.onSurface, shadowOpacity: 0.5, shadowOffset: CGSize(width: 0.0, height: 0.0), shadowRadius: 0.0)
    static let level4: Shadow = Shadow(elevation: 8.0, shadowColor: OpenColors.onSurface, shadowOpacity: 0.5, shadowOffset: CGSize(width: 0.0, height: 0.0), shadowRadius: 1.0)
    static let level3: Shadow = Shadow(elevation: 6.0, shadowColor: OpenColors.onSurface, shadowOpacity: 0.5, shadowOffset: CGSize(width: 0.0, height: 0.0), shadowRadius: 0.0)
    static let level2: Shadow = Shadow(elevation: 3.0, shadowColor: OpenColors.onSurface, shadowOpacity: 0.5, shadowOffset: CGSize(width: 0.0, height: 0.0), shadowRadius: 0.0)
}

