local colors = {}
colors.get_colors = function()
    local mycolors = {} ---@type table<string,string>

    if vim.o.background == 'dark' then
        mycolors = {
            vscNone = 'NONE',
            vscFront = '#00FF41',  -- Matrix bright green for main text
            vscBack = '#000000',   -- Pure black background

            vscTabCurrent = '#000000',
            vscTabOther = '#001100',
            vscTabOutside = '#001a00',

            vscLeftDark = '#001a00',
            vscLeftMid = '#002200',
            vscLeftLight = '#003300',

            vscPopupFront = '#00CC33',
            vscPopupBack = '#001100',
            vscPopupHighlightBlue = '#004400',
            vscPopupHighlightGray = '#002200',

            vscSplitLight = '#004400',
            vscSplitDark = '#002200',
            vscSplitThumb = '#003300',

            vscCursorDarkDark = '#001100',
            vscCursorDark = '#003300',
            vscCursorLight = '#00AA33',
            vscSelection = '#004400',
            vscLineNumber = '#008822',

            vscDiffRedDark = '#330000',
            vscDiffRedLight = '#440000',
            vscDiffRedLightLight = '#FF3333',
            vscDiffGreenDark = '#002200',
            vscDiffGreenLight = '#004400',
            vscSearchCurrent = '#006600',
            vscSearch = '#004400',

            vscGitAdded = '#00FF41',
            vscGitModified = '#00DD33',
            vscGitDeleted = '#FF4444',
            vscGitRenamed = '#00CC33',
            vscGitUntracked = '#00BB33',
            vscGitIgnored = '#555555',
            vscGitStageModified = '#00DD33',
            vscGitStageDeleted = '#FF4444',
            vscGitConflicting = '#FF6666',
            vscGitSubmodule = '#00AA33',

            vscContext = '#003300',
            vscContextCurrent = '#005500',

            vscFoldBackground = '#002200',

            vscSuggestion = '#006600',

            -- Syntax colors - Matrix green variations
            vscGray = '#555555',
            vscViolet = '#00AA33',     -- Convert to green
            vscBlue = '#00DD33',      -- Convert to green
            vscAccentBlue = '#00FF41', -- Bright matrix green
            vscDarkBlue = '#004400',
            vscMediumBlue = '#00BB33',
            vscDisabledBlue = '#008822',
            vscLightBlue = '#00FF41',  -- Bright matrix green
            vscGreen = '#00CC33',     -- Standard green
            vscBlueGreen = '#00DD33', -- Bright green
            vscLightGreen = '#00FF41', -- Matrix bright green
            vscRed = '#FF4444',       -- Keep red for errors
            vscOrange = '#00BB33',    -- Convert to green
            vscLightRed = '#FF6666',  -- Keep red for errors
            vscYellowOrange = '#00AA33', -- Convert to green
            vscYellow = '#00FF41',    -- Matrix bright green
            vscDarkYellow = '#00DD33',
            vscPink = '#00CC33',      -- Convert to green

            -- Low contrast with default background
            vscDimHighlight = '#004400',
        }
    else
        mycolors = {
            vscNone = 'NONE',
            vscFront = '#343434',
            vscBack = '#FFFFFF',

            vscTabCurrent = '#FFFFFF',
            vscTabOther = '#CECECE',
            vscTabOutside = '#E8E8E8',

            vscLeftDark = '#C4C4C4',
            vscLeftMid = '#E5E5E5',
            vscLeftLight = '#F3F3F3',

            vscPopupFront = '#000000',
            vscPopupBack = '#F8F8F8',
            vscPopupHighlightBlue = '#0064c1',
            vscPopupHighlightGray = '#767676',

            vscSplitLight = '#EEEEEE',
            vscSplitDark = '#DDDDDD',
            vscSplitThumb = '#DFDFDF',

            vscCursorDarkDark = '#E5E5E5',
            vscCursorDark = '#6F6F6F',
            vscCursorLight = '#767676',
            vscSelection = '#ADD6FF',
            vscLineNumber = '#098658',

            vscDiffRedDark = '#FFCCCC',
            vscDiffRedLight = '#FFA3A3',
            vscDiffRedLightLight = '#FFCCCC',
            vscDiffGreenDark = '#DBE6C2',
            vscDiffGreenLight = '#EBF1DD',
            vscSearchCurrent = '#A8AC94',
            vscSearch = '#F8C9AB',

            vscGitAdded = '#587c0c',
            vscGitModified = '#895503',
            vscGitDeleted = '#ad0707',
            vscGitRenamed = '#007100',
            vscGitUntracked = '#007100',
            vscGitIgnored = '#8e8e90',
            vscGitStageModified = '#895503',
            vscGitStageDeleted = '#ad0707',
            vscGitConflicting = '#ad0707',
            vscGitSubmodule = '#1258a7',

            vscContext = '#D2D2D2',
            vscContextCurrent = '#929292',

            vscFoldBackground = '#e6f3ff',

            vscSuggestion = '#868686',

            -- Syntax colors
            vscGray = '#000000',
            vscViolet = '#000080',
            vscBlue = '#0000FF',
            vscDarkBlue = '#007ACC',
            vscLightBlue = '#0451A5',
            vscGreen = '#008000',
            vscBlueGreen = '#16825D',
            vscLightGreen = '#098658',
            vscRed = '#FF0000',
            vscOrange = '#C72E0F',
            vscLightRed = '#A31515',
            vscYellowOrange = '#800000',
            vscYellow = '#795E26',
            vscPink = '#AF00DB',

            -- Low contrast with default background
            vscDimHighlight = '#B2DFDB',
        }
    end

    -- Other ui specific colors
    mycolors.vscUiBlue = '#084671'
    mycolors.vscUiOrange = '#f28b25'
    mycolors.vscPopupHighlightLightBlue = '#d7eafe'

    -- Extend the colors with overrides passed by `color_overrides`
    local config = require('vscode.config')
    if config.opts.color_overrides then
        mycolors = vim.tbl_extend('force', mycolors, config.opts.color_overrides)
    end

    return mycolors
end

return colors
