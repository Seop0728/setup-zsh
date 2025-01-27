# 🚀 ZSH Enhancement Script

이 스크립트는 Linux 환경에서 ZSH 셸을 설치하고 강력한 기능들을 자동으로 구성해주는 도구입니다.

## ✨ 주요 기능

- [Oh My Zsh](https://ohmyz.sh/) 설치 및 구성
- Powerline 폰트 지원
- 구문 강조 (Syntax Highlighting)
- 명령어 자동 완성 (Autosuggestions)
- 퍼지 파인더 (fzf) 통합
- 향상된 파일 탐색기 (lsd)
- 향상된 cat 명령어 (bat)
- Git 플러그인
- Docker 플러그인
- Kubectl 플러그인
- Vim 설정 및 플러그인

## 📋 사전 요구사항

- Ubuntu/Debian 기반 Linux 시스템
- sudo 권한

## 🚀 설치 방법

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Seop0728/setup-zsh/main/setup-zsh.sh)"
```

## 🛠️ 포함된 도구들

### Oh My Zsh 플러그인
- git: Git 통합 및 별칭
- colored-man-pages: 매뉴얼 페이지 색상 강조
- zsh-syntax-highlighting: 셸 명령어 구문 강조
- zsh-autosuggestions: 명령어 자동 완성
- fzf: 퍼지 파인더 통합
- kubectl: 쿠버네티스 CLI 도구 통합
- docker: Docker 명령어 통합

### 추가 도구
- **lsd**: `ls` 명령어의 현대적인 대체제
  - `ls`: lsd
  - `ll`: lsd -l
  - `la`: lsd -a
- **bat**: `cat` 명령어의 강화된 버전
  - 구문 강조
  - Git 통합
  - 자동 페이징

## ⚙️ 커스터마이즈

### ZSH 설정

```bash
vim ~/.zshrc
```

### Vim 설정

```bash
vim ~/.vimrc
```

## 🎨 테마 및 폰트

- ZSH 테마: Agnoster
- 폰트: JetBrainsMono Nerd Font
  - 강화된 아이콘 지원
  - 완벽한 Powerline 심볼 통합

## 🤝 기여하기

1. 이 저장소를 포크합니다.
2. 새로운 브랜치를 생성합니다.
3. 변경사항을 커밋합니다.
4. 브랜치에 푸시합니다.
5. Pull Request를 생성합니다.

## 📝 라이선스

[MIT License](https://opensource.org/license/mit) - 자세한 내용은 LICENSE 파일을 참조하세요.

## 🙏 감사의 말

이 스크립트는 다음 프로젝트들을 기반으로 만들어졌습니다:
- [Oh My Zsh](https://ohmyz.sh/)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [fzf](https://github.com/junegunn/fzf)
- [bat](https://github.com/sharkdp/bat)
- [lsd](https://github.com/lsd-rs/lsd)
- [Pathogen](https://github.com/tpope/vim-pathogen)
- [vim-indent-guides](https://github.com/preservim/vim-indent-guides)
- [JetBrainsMono Nerd Font](https://www.nerdfonts.com/)