## **Drunk Text Generator**

**What is it?**

This Lua script generates a "drunk" version of your text, adding random fillers and duplicating letters for a humorous, intoxicated effect.

**How does it work?**

1. **Input:** You provide a text string.
2. **Level:** You set a "level" that controls the intensity of the drunk effect. Higher levels result in more pronounced drunkenness.
3. **Filler Texts:** A list of filler texts (e.g., "...", "blu-b", "--") is used to randomly insert into the original text.
4. **Letter Duplication:** Letters are duplicated randomly, adding to the chaotic appearance.

**Usage:**

1. **Include the script:** Place the script in your Lua project.
2. **Call the function:** Use `applyDrunkEffect(text, level)` to apply the effect.
3. **Customize:** Adjust the `fillerTexts` array to change the fillers used.

**Example:**

```lua
local drunkText = applyDrunkEffect("Hello, world!", 5)
print(drunkText) -- Output might be something like: "H-e-l-l-l-l-o, w-o-r-l-d!... blu-b"
```

**Parameters:**

- **myText:** The input text string.
- **currentLevel:** The current level of drunkenness (1-10).
- **maxLevel:** The maximum possible level (1-10).

**Return Value:**

The function returns the modified, "drunk" text string.

**Additional Notes:**

- The script is designed for Luau.
- You can adjust the `maxLevel` and `fillerTexts` to customize the effect.
- For more advanced usage, consider creating a module script.

**Enjoy your drunken text adventures!**

MIT License
Copyright © 2024 upsibey

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
