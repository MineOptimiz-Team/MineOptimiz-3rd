# MineOptimiz

**English**/[中文](README.md)

![MineOptimiz Cover Image](https://123smallmushroom.github.io/mineoptimiz/main_menu_en.png)

Minecraft optimization modpack, supporting both Fabric/(Neo)Forge mod loaders, providing performance optimizations and auxiliary feature integrations.

## Core Features

- 🚀 **Cross-Version Support** - Covers multiple mainstream versions  
- 🛠️ **Multi ModLoader Support** - Simultaneously supports Fabric and (Neo)Forge  
- 📊 **Performance Multiplier** - Integrates Sodium (Embeddium) and other rendering optimization mods  
- ✨ **OptiFine Feature Support** - Uses resource packs and open-source mods to implement nearly all OptiFine features

## Version Support

- Sorted by update priority

| MC Version | Mod Loader          | Rendering Solution                  | Maintenance Status |
|------------|---------------------|-------------------------------------|--------------------|
| 1.21.8     | Fabric              | Sodium                              | ✅ Actively Updated |
| 1.21.1     | NeoForge / Fabric   | Sodium / VulkanMod                  | ✅ Actively Updated |
| 1.21.10    | Fabric              | Sodium                              | ⚠️ In beta phase    |
| 1.12.2     | Cleanroom           | OptiFine                            | ⚠️ In beta phase    |
| 1.21.4     | Fabric              | Sodium / VulkanMod                  | ❌ No Longer Updated |
| 1.20.1     | Forge / Fabric      | Embeddium / Sodium / VulkanMod      | ❌ No Longer Updated |
| 1.21.5*    | Fabric              | Sodium                              | ❌ No Longer Updated |
| 1.18.2     | Forge / Fabric      | Sodium                              | ❌ No Longer Updated |
| 1.20.6*    | Fabric              | Sodium                              | ❌ No Longer Updated |
| 1.19.4     | Fabric              | Sodium / OptiFine                   | ❌ No Longer Updated |
| 1.17.1     | Fabric              | Sodium                              | ❌ No Longer Updated |
| 1.12.2     | Forge               | OptiFine                            | ❌ No Longer Updated |

- *: Marked versions are semi-finished

## Optimization Results

| Specifications (CPU+GPU+OS+Resolution)                                      | Performance Improvement      |
|----------------------------------------------------------------------------|------------------------------|
| Intel i7-3610QM+NVIDIA GT 740M+Windows 10 LTSC 2019+1366x768               | Vanilla 30FPS → Max 71FPS    |
| Intel i7-3610QM+NVIDIA GT 740M+Windows 8.1*+1366x768                       | Vanilla 115FPS → Max 195FPS  |
| Intel i5-1135G7+Intel Iris Xe Graphics+Windows 11 23H2+1280x720            | Vanilla 92FPS → Max 146FPS   |
| Intel i3-N305+Intel UHD Graphics+Windows 11 25H2+1920x1080                 | Vanilla 94FPS → Max 170FPS   |
| AMD Ryzen AI 7 H 260+AMD Radeon 780M+Windows 10 20H2+2560x1600                | Vanilla 462FPS → Max 652FPS  |
| AMD Ryzen AI 7 H 260+NVIDIA RTX 5050 Laptop+Windows 10 20H2+2560x1600         | Vanilla 514FPS → Max 684FPS  |
| Intel Core i7-10750H+NVIDIA GTX 1650 Ti+Windows 11 21H2+1920x1080          | Vanilla 118FPS → Max 203FPS  |
| AMD Ryzen 7 7745HX+NVIDIA RTX 4050+Windows 11 24H2+2560x1600               | Vanilla 738FPS → Max 911FPS  |

- The above data is for reference only and is not entirely accurate
- The above data was tested in Minecraft 1.21.8 single-player superflat world; modpack data tested in v3.218.0-fabric+66e0165
- Thanks to [@htl597](https://github.com/htl597) and [@Pstar233](https://github.com/Pstar233) for providing some test data
- *: This system was tested after a fresh installation, which may result in slightly inflated data

## Downloads

- [GitHub Releases](https://github.com/MineOptimiz-Team/MineOptimiz-3rd/releases): All versions after May 2024 
- [GitHub Actions](https://github.com/MineOptimiz-Team/MineOptimiz-3rd/actions): Test versions
- Old versions: [See below](https://github.com/MineOptimiz-Team/MineOptimiz-3rd?tab=readme-ov-file#%EF%B8%8F-%E9%A1%B9%E7%9B%AE%E6%B2%BF%E9%9D%A9)

### Historical Versions
- 1.12.2: [Netdisk Download](https://www.123pan.com/s/jtiDVv-XMmWA.html)

## Installation
- Drag the modpack file into a [supported launcher](supported_launcher.md), and the launcher will automatically start the installation

## Updates
Please use the launcher to update the modpack

The modpack contains a download update script, but this script is no longer maintained and is not recommended for use

## Known Issues
- See [this document](known_issues.md)

## License Agreement
The license declarations of the mods included in the modpack are detailed in: [License Agreement File](https://123smallmushroom.github.io/license_of_mods.txt)

## Contact Us
[QQ Group](https://qm.qq.com/q/eYhYHKpvs4)

## Project History
- **Current Main Repository**: MineOptimiz-3rd  
- **Historical Iterative Versions**:
  - [MineOptimiz-Next](https://github.com/smallmushroomovo/MineOptimiz-Next)

  - [MineOptimiz](https://github.com/123SmallMushroom/MineOptimiz)
