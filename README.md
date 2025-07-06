# resume

Resume of An Subin (안수빈).

PDF: https://github.com/nyeong/resume/releases

## Structure

- `src/ko.typ` - Korean resume (data + render)
- `src/en.typ` - English resume (data + render)
- `shared/` - Common styles and template
- `fonts/` - Noto CJK fonts

## Dependencies

- [Nix] with flakes support
- [typst] (automatically installed via Nix)
- [noto-cjk] - [SIL Open Font License 1.1](https://github.com/notofonts/noto-fonts/blob/main/LICENSE)

[Nix]: https://nixos.org/
[typst]: https://github.com/typst/typst
[noto-cjk]: https://github.com/notofonts/noto-cjk

## Development

Enter the development environment:

```bash
nix develop
```

Or use direnv (recommended):

```bash
direnv allow
```

## Compile

### Using Nix (Recommended)

```bash
# Build Korean resume
nix build .#korean

# Build English resume  
nix build .#english

# Build both versions
nix build .#all
```

### Using Typst directly

```bash
# Korean resume
typst compile src/ko.typ --font-path fonts --root .

# English resume
typst compile src/en.typ --font-path fonts --root .
```

### Watch mode

```bash
# Watch Korean resume
typst watch src/ko.typ --font-path fonts --root .

# Watch English resume
typst watch src/en.typ --font-path fonts --root .
```

## Release

Tag a commit and push it. GitHub Actions will automatically build and release both versions.

```bash
git tag v1.0.1
git push origin v1.0.1
```
