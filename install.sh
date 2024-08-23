cd OpenDesignSystem
swift build --configuration release
chmod +x .build/release/opends
cp -f .build/release/opends /usr/local/bin/opends
cd ..
