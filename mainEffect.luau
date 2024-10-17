--[[
MIT License
Copyright © 2024 upsibey

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"),
to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software,
and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, 
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

]]

local  fillerTexts = {"...", " blu-b ", "--", "!", "grr..", "-oaaoaha", "..dmdm..", "hhhhmhmhmh"} --Filler Text that can be changed
  
local text = "Where is my food?" -- Text that needs changing


-- Main Function to apply the Drunk Effect
--myText -> Text that needs the Drunk Effect
--currentLevel -> defines what our currentLevel is, the closer to maxLeve, the messier the effect will get
--maxLevel -> defines the max level for our Filler Effect, if currentLevel and maxLevel are the same, every char will have a filler effect afterwards
local function applyDrunkEffect(myText : string, currentLevel : number, maxLevel : number)
    myText = string.lower(myText)
    
    local stringBuilder = ""
    local effectUsed = 0

    for i = 0, #myText, 1 do
        local fillerChance = math.random(1,maxLevel) -- In this line we get a random number that decides if we will apply the Filler Effect
        local duplicateChance = math.random(1,3) --In this line we get the amount of times the letter will be duplicated
        
        if fillerChance <= currentLevel and effectUsed <= 0 then
          stringBuilder = stringBuilder .. myText:sub(i,i) .. tostring(fillerTexts[math.random(1, #fillerTexts)]) --applying the random filler effect here
          effectUsed = 2 -- After using an effect, we set a cooldown for the next 2 letters.
        end
        effectUsed = effectUsed - 1 
        
        --In this loop we do the duplication, because the letter will always be duplicated (atleast once) this operation is enough
        --and we don't need another line where we add the letter to the stringBuilder Variable
        for j = 1, duplicateChance, 1 do
          stringBuilder = stringBuilder .. myText:sub(i,i)
        end
        
      end

      return stringBuilder
end

drunkText = applyDrunkEffect(text, 8, 10)
print(drunkText)

--Uncomment this part if you want to use this script as a Module Script
--[[
return {
    applyDrunkEffect
}
]]