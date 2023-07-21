# iGG-Menu-JIT-Rootless
iGG-Menu-JIT-Rootless is a template menu for iOS that supported patching offsets/hexes for Non-jailbreak with JIT and fix patch for Dopamine jailbreak using IMGUI, also working with other jailbreak!

<div style="text-align: center;">
<b>IMGUI Template Preview</b><br>

<img src="https://raw.githubusercontent.com/WeansHHN/iGG-Menu-JIT-Rootless/Preview.PNG">
</div>


# About
- I'm using vm_writeData.h to patch the offsets/hexes
- Kopycat some code from [joeyjurjens](https://github.com/joeyjurjens/iOS-Mod-Menu-Template-for-Theos)
- Also bring encryption from joeyjurjens template too
- Fans of Attack ON Titan=))) 

# Installation
- Using theos for compilation
- Add ```THEOS_PACKAGE_SCHEME = rootless``` to support Dopamine if you want 

# Feature
- On/Off switch for patching offsets
### Not support hooking at this time, I'll try to adding it when I have time 🫣

# Usage
**3 fingers double tap to screen to open menu, 2 fingers double tap to disable menu**
- Take a look at `SupportFile/NakanoYotsuba.h` file. I noted about ASLR issue on Dopamine/Xina/palera1n jailbreak (iOS 15 and up issue), change 0 or 1 depends on which target jailbreak you're using

Editing these in `IGGMain.mm`

- Patching offset on default binary `NULL`
```obj-c
vm(ENCRYPTOFFSET("0x10517A154"), strtoul(ENCRYPTHEX("0xC0035FD6"), nullptr, 0));
```

- Patching offset on `UnityFramework`
```obj-c
vm_unity(ENCRYPTOFFSET("0x517A154"), strtoul(ENCRYPTHEX("0x360080D2"), nullptr, 0));
```
You can change this to anything you want to patch on the line where I noted in `SupportFile/NakanoYotsuba.h`. Normally it's `UnityFramework` but some games like LoL WildRift is `FEProj`

- Font using for this menu is Honkai Star Rail font (**English only**)

# If you like and want to ỉmprove this works, please DM me on Telegram @little34306 for fixing stuffs and make it working better. (Pull request button is on the top, you can do that!)

# Author
- Ninh (it's me) [WeansHHN](https://github.com/weanshhn)
- [34306](https://github.com/34306) for [Rootless source code](https://github.com/34306/HuyJIT-ModMenu)
- [x2nios](https://github.com/x2niosvn) for [iGG Mod Menu](https://github.com/x2niosvn/)
- [joeyjurjens](https://github.com/joeyjurjens) for [iOS Mod Menu](https://github.com/joeyjurjens/iOS-Mod-Menu-Template-for-Theos)
