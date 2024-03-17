# resume

Resume of An Subin.

PDF: https://github.com/nyeong/resume/releases

## Dependencies

- [typst]
- [noto-cjk] - [SIL Open Font License 1.1](https://github.com/notofonts/noto-fonts/blob/main/LICENSE)

[typst]: https://github.com/typst/typst
[noto-cjk]: https://github.com/notofonts/noto-cjk

## Compile

```bash
typst compile main.typ --font-path fonts
```

## Release

Tag a commit and push it.

```bash
git tag v1.0.1
git push origin v1.0.1
```
