brew(x86) Install onM1
===

## インストール

```bash
xcode-select --install
softwareupdate --install-rosetta --agree-to-license #rosseta2の有効化
arch -arch x86_64 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
## インストールされたPATHを一応気にする
```

## 使う時(path通さないなら以下)

```bash
arch -arch x86_64 /usr/local/bin/brew tap nativeos/i386-elf-toolchain #tapする例
arch -arch x86_64 /usr/local/bin/brew install i386-elf-binutils i386-elf-gcc #インストールする例
```

* armのbrewと使い分けるならpath通し方注意
