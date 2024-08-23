# OpenDSiOS

![OpenDS logo](docs/images/opends-logo.png)

The official Open Design System iOS CLI provides the easiest way to have access to your Design System tokens in iOS.

# Install

`OpenDSiOS` is available through a CLI tool, which you can installed or run it without anything.

If you don't want to install the tool, you can after, cloning the repository, use the command:

```bash
swift run opends <parameters>
```

But if you want to installed you can do:

```bash
make install
```

or:

```bash
sh install.sh
```

Both will install the CLI for you and you will be able to use it as any other command in your device.

# Creating a contract theme

You can create a contract theme in the [theme generator](https://open-design-systems.github.io/), there you will need to export the theme to later be used in your project.

# Basic Usage

Once you have the CLI, you can genearted the tokens by running the command:

```bash
opends -r <resource_path> -o <output_path> -f <file_name>
``` 

If you don't provide the file name it will use the name `Generated.swift` as default.

You can also execute the same command using the long form of the options, like this:

```bash
opends --resourcePath <resource_path> --outputPath <output_path> --fileName <file_name>
``` 

After the file is generated, you will need to add the reference to your Xcode project or make it known by the tool you use to generate the Xcode project file.

## Generated tokens

All generated tokens will follow the convention name of `Open<Type>` which will be an enum with `static variables` for each token you will use.

Here is an example of how to access some tokens:

```swift
let color = OpenColors.surface
let font = OpenTypography.bodyMedium
```

## UI Framework Support

The color values will use the `Color` from `SwiftUI`, so if you want to use it for `UIKit`, you will need to convert the values for now.

## Recommendations

It is recommened to use the generated file in only one module and share the values through this module. It is still possible to use in multiple modules, but you will need to manage the name conflicts manually. For instance:

```swift
let surfaceColor = Module1.OpenColors.surface
let backgroundColor = Module2.OpenColors.background
```

# R8 / Proguard

TODO

# License