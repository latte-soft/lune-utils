# Lune Utils

Common Universal Utility Modules Made for Our Projects Using [Lune](https://github.com/filiptibell/lune)

*This was made solely to better centralize these common utilities for the scale of multiple different projects*

## Installation

* Via a Git [Submodule](https://git-scm.com/book/en/v2/Git-Tools-Submodules)

    1. Add a submodule in *your* repository pointing to *this* repository, to a specified directory (replace `path/to/chosen/directory/lune-utils`):

        ```
        git submodule add https://github.com/latte-soft/lune-utils.git path/to/chosen/directory
        ```

    2. For updating your repository's submodule(s), including said `path/to/chosen/directory/lune-utils` (Being the submodule):

        ```
        git submodule update --remote path/to/chosen/directory/lune-utils
        ```

    3. From a Lune script, you can now just `require()` the directory directly due to the presence of `init.luau`:

        ```lua
        local LuneUtils = require("path/to/chosen/directory/lune-utils")
        ```

* Downloading the Repository's `zip` Archive Manually:

    1. Download from <https://github.com/latte-soft/lune-utils/zipball/master>

    2. Extract to any subdirectory of choice

    3. `require()` the directory's path the same as through a submodule, easy!

* Using the [Wax](https://github.com/latte-soft/wax)-Bundled Distribution of the Utils

    1. Download the [latest `lune-utils.luau`](https://github.com/latte-soft/lune-utils/releases/latest/download/lune-utils.luau) from the [Releases page](https://github.com/latte-soft/lune-utils/releases)

    2. `require()` the script in the exact same way, just instead of a directory:

        ```lua
        local LuneUtils = require("lune-utils")
        ```

## Usage

You must define a reference to `lune-utils` to utilize its members, like so:

```lua
local LuneUtils = require("lune-utils")
```

With that, you can index any module from this repo's [lib](lib) directory; for example:

```lua
print(LuneUtils.StringUtils.DirectoryOfFilePath("path/to/file.txt"))
-- > path/to/
```

## License

*See file: [LICENSE](LICENSE)*

```
MIT License

Copyright (c) 2023 Latte Softworks <https://latte.to>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

```
