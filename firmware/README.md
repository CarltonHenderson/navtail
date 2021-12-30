# Nav-Tail Firmware

## Architecture

Use dependency injection and [clean architecture].

![Clean Architecture](https://blog.cleancoder.com/uncle-bob/images/2012-08-13-the-clean-architecture/CleanArchitecture.jpg)

[clean architecture]: https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html

## Code Style

Use [Google C++ Style](https://google.github.io/styleguide/cppguide.html)

But, for simplicity, I'm going to try to use C where possible. (structs, functions, function pointer) and to avoid cpp (classes).

## Code Formatting

1. debian: _sudo apt install [clang-format]_
2. vscode: _ext install [xaver.clang-format]_

[clang-format]: https://clang.llvm.org/docs/ClangFormat.html
[xaver.clang-format]: https://marketplace.visualstudio.com/items?itemName=xaver.clang-format
