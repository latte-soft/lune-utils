local fs = require("@lune/fs")

local Log = require("../lib/Log")
local StringUtils = require("../lib/StringUtils")
local Run = require("../lib/Run")

local DebugOutputPath = "build/lune-utils.luau"
local MinOutputPath = "build/lune-utils.min.luau"

local Version = fs.readFile("version.txt")

local CodegenHeader = [[
--!nolint
--!nocheck
--!native
--!optimize 2

--[[
    latte-soft/lune-utils - Common Universal Utility Modules Made for Our Lune Projects
    MIT License | Copyright (c) 2023 Latte Softworks <https://latte.to>

    Version: ]] .. Version .. "\n]]\n\n------------------------------------------------------------------------------------------------------\n\n"

if fs.isDir("build") then
    Log.Info("Removing old `build` directory..")
    fs.removeDir("build")
end

local CodegenHeaderLineOffset = StringUtils.LineCount(CodegenHeader) - 1

fs.writeDir("build")

Run(`lune wax bundle output={DebugOutputPath} extra-offset-lines={CodegenHeaderLineOffset} ci-mode=true`)
fs.writeFile(DebugOutputPath, CodegenHeader .. fs.readFile(DebugOutputPath))

Run(`lune wax bundle output={MinOutputPath} extra-offset-lines={CodegenHeaderLineOffset} ci-mode=true minify=true`)
fs.writeFile(MinOutputPath, CodegenHeader .. fs.readFile(MinOutputPath))
