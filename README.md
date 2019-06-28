
### To clone

```
git clone https://github.com/av-maslov/emacs-minimal.git ~/.emacs.d
git clone https://github.com/av-maslov/emacs-yasnippets.git ~/.emacs.d/plugins-yasnippet-snippets
```

### Install ESS and Julia mode for it (CentOS)

```
git clone https://github.com/emacs-ess/ESS.git ~/ESS
git clone https://github.com/JuliaEditorSupport/julia-emacs.git ~/.emacs.d/plugins/
```

**For ESS-mode**

For brackets auto-closed ```M-x electric-pair-mode``` NOT `M-x paredit-mode` which adds extra space

**Install Fira Code font**

- https://github.com/tonsky/FiraCode

Windows: 

```
choco install firacode
```

**For YA Snippet use** 
```
Shift TAB
```
see init.el 

# Some custom key-bindings

```
C-c S : easy motion 
C-l   : go to line
C RET : New line without breaking the current line
C TAB : other window 
```

# Packages requiring installation from MELPA

```
M-x package-list-pcakages
```
or
```
M-x package-install
```

- [auto-complete/auto-complete](https://github.com/auto-complete/auto-complete) , http://auto-complete.org
- [magit-status](http://magit.vc/)
- [slime](https://common-lisp.net/project/slime/)
- [symon](https://melpa.org/?utm_source=dlvr.it&utm_medium=twitter#/symon) tiny graphical system monitor


# Packages requiring compilation

```
M-x byte-compile rainbow-delimiters.el 
```


# Emacs minimal settings

Preinstalled packages:  

- [Solarized color theme](https://github.com/sellout/emacs-color-theme-solarized)
- [smex](https://github.com/nonsequitur/smex/)
- [ace-jump-mode](https://github.com/winterTTr/ace-jump-mode)
- [highlight-symbol.el](https://github.com/nschum/highlight-symbol.el)
- [SrSpeedbar](http://www.emacswiki.org/emacs/SrSpeedbar)
- [scala-mode2](https://github.com/hvesalai/scala-mode2)


