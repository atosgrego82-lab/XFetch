# Building the first XFetch.xex

This is a **prototype**, not yet a ROM downloader. It currently uses the upstream xsdk sample template, with a changed clear colour and XFetch filename. It is intended to test booting on Xbox 360 RGH with Aurora; press Back to exit.

The GitHub Actions workflow `Build XFetch XEX prototype` uses the open-source [xenosworks/xsdk](https://github.com/xenosworks/xsdk) toolchain, which targets retail-kernel RGH/JTAG Xbox 360 consoles. It builds the compiler on an Ubuntu runner and uploads an artifact if successful. It may take time and has **not yet been verified in this repository**.

## Android / Termux

```sh
cd ~/XFetch
git pull
bash build.sh
```

The local script is a bootstrap check only. To build without a PC, open the GitHub repository > Actions > Build XFetch XEX prototype > Run workflow. Once successful, download the `XFetch-XEX-prototype` artifact from the workflow run, extract it and copy `XFetch.xex` to the console using Android/OTG/USB. Only run unsigned homebrew on your own RGH/JTAG console.

## Important

The earlier `powerpc64-unknown-linux-gnu` object is not compatible with xsdk's custom calling convention. xsdk uses a patched `powerpc-xsdk-elf` toolchain. A regular Clang object is not enough. Never rename an ELF or shell script to `.xex` and assume it will boot.

Source of build method: xsdk docs/GETTING_STARTED.md (October 2026).
