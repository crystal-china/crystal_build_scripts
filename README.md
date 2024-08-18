This is a fork of [magic-haversack](https://github.com/luislavena/magic-haversack), all honors belong to the original author.

## Dependencies

If you are use linux, all dependencies is almost available, except zig compiler.

- BASH (version > 4.0)
- sed
- zig compiler
- Ruby (only if you want download the libraries by yourself, but i will upload those libraries as assets in release page later)

## How to use it.

1.  git clone https://github.com/crystal-china/magic-haversack
2.  Run `bundle install` then `rake fetch:all`, You can skip this step if you download libraries from github release page instead, and extract it into `PROJECT_ROOT/lib`, as following:

```
 ╰─ $ tree -L1 lib
lib
├── aarch64-linux-musl
├── aarch64-monterey
├── x86_64-linux-musl
└── x86_64-monterey
```

3. Add `PROJECT_ROOT/bin` into system $PATH, then you can run `sb` script for cross build a Crystal program.

4. Entering the Crystal project you want to execute the build on, I use following command for built an AMD64 static binary which can copy into and running it on any linux host.

```sh
$: sb --cross-compile --target=x86_64-linux-musl --static --no-debug --link-flags=-s --release
```

Check following example for cross build a binary for `x86_64-linux-musl`, `aarch-linux-musl`，`x86_64-darwin` and `aarch-darwin` on my linux host.

```sh
 ╰─ $ sb --cross-compile --target=x86_64-linux-musl --static
zig cc -target x86_64-linux-musl bin/college.o -o bin/college  -rdynamic -static -L/home/zw963/Crystal/crystal-china/magic-haversack/lib/x86_64-linux-musl -lgmp -lyaml -lz `command -v pkg-config > /dev/null && pkg-config --libs --silence-errors libssl || printf %s '-lssl -lcrypto'` `command -v pkg-config > /dev/null && pkg-config --libs --silence-errors libcrypto || printf %s '-lcrypto'` -lpcre2-8 -lgc -lpthread -ldl -levent -lunwind


 ╰─ $ file bin/college
bin/college: ELF 64-bit LSB executable, x86-64, version 1 (SYSV), static-pie linked, with debug_info, not stripped


 ╰─ $ sb --cross-compile --target=aarch64-linux-musl --static
zig cc -target aarch64-linux-musl bin/college.o -o bin/college  -rdynamic -static -L/home/zw963/Crystal/crystal-china/magic-haversack/lib/aarch64-linux-musl -lgmp -lyaml -lz `command -v pkg-config > /dev/null && pkg-config --libs --silence-errors libssl || printf %s '-lssl -lcrypto'` `command -v pkg-config > /dev/null && pkg-config --libs --silence-errors libcrypto || printf %s '-lcrypto'` -lpcre2-8 -lgc -lpthread -ldl -levent -lunwind


 ╰─ $ file bin/college
bin/college: ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), static-pie linked, with debug_info, not stripped


 ╰─ $ sb --cross-compile --target=x86_64-darwin --static
zig cc -target x86_64-macos-none bin/college.o -o bin/college  -rdynamic -static -L/home/zw963/Crystal/crystal-china/magic-haversack/lib/x86_64-monterey -lgmp -lyaml -lz `command -v pkg-config > /dev/null && pkg-config --libs --silence-errors libssl || printf %s '-lssl -lcrypto'` `command -v pkg-config > /dev/null && pkg-config --libs --silence-errors libcrypto || printf %s '-lcrypto'` -lpcre2-8 -lgc -lpthread -ldl -levent -liconv -lunwind


  ╰─ $ file bin/college
bin/college: Mach-O 64-bit x86_64 executable, flags:<NOUNDEFS|DYLDLINK|TWOLEVEL|NO_REEXPORTED_DYLIBS|PIE|HAS_TLV_DESCRIPTORS>


 ╰─ $ sb --cross-compile --target=aarch64-darwin --static
zig cc -target aarch64-macos-none bin/college.o -o bin/college  -rdynamic -static -L/home/zw963/Crystal/crystal-china/magic-haversack/lib/aarch64-monterey -lgmp -lyaml -lz `command -v pkg-config > /dev/null && pkg-config --libs --silence-errors libssl || printf %s '-lssl -lcrypto'` `command -v pkg-config > /dev/null && pkg-config --libs --silence-errors libcrypto || printf %s '-lcrypto'` -lpcre2-8 -lgc -lpthread -ldl -levent -liconv -lunwind
```
 I have been using this workflow for a long time, and it work quite well, so i don't want add unnecessary complexity for same purpose, don't misunderstand me, i use docker quite well, but I use it only necessary.

## Contributing

If you use other third-party libraries, please feel free to submit an issue, Or

1. Fork it (<https://github.com/crystal-china/hashr/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [luislavena](https://github.com/luislavena) - creator and maintainer
- [Billy.Zheng](https://github.com/zw963) - current maintainer
