-- align_to_char(length, reverse, preview, marks)
-- align_to_string(is_pattern, reverse, preview, marks)
-- align(str, reverse, marks)
-- operator(fn, opts)
-- Where:
--      length: integer
--      reverse: boolean
--      preview: boolean
--      marks: table (e.g. {1, 0, 23, 15})
--      str: string (can be plaintext or Lua pattern if is_pattern is true)

local NS = { noremap = true, silent = true }

vim.keymap.set('x', 'ga', function() require'align'.align_to_char({ preview = true, length = 1 })             end, NS) -- Aligns to 1 character, looking left
-- Aligns to a string with previews
vim.keymap.set(
    'x',
    'gw',
    function()
        require'align'.align_to_string({
            preview = true,
            regex = false,
        })
    end,
    NS
)

-- vim.keymap.set('x', 'as', function() require'align'.align_to_char(2, true, true)       end, NS) -- Aligns to 2 characters, looking left and with previews
-- vim.keymap.set('x', 'aw', function() require'align'.align_to_string(false, true, true) end, NS) -- Aligns to a string, looking left and with previews
-- vim.keymap.set('x', 'ar', function() require'align'.align_to_string(true, true, true)  end, NS) -- Aligns to a Lua pattern, looking left and with previews

-- Example gawip to align a paragraph to a string, looking left and with previews
-- vim.keymap.set(
--     'n',
--     'gaw',
--     function()
--         local a = require'align'
--         a.operator(
--             a.align_to_string,
--             { is_pattern = false, reverse = true, preview = true }
--         )
--     end,
--     NS
-- )

-- Example gaaip to aling a paragraph to 1 character, looking left
-- vim.keymap.set(
--     'n',
--     'gaa',
--     function()
--         local a = require'align'
--         a.operator(
--             a.align_to_char,
--             { length = 1, reverse = true }
--         )
--     end,
--     NS
-- )
--
--
--
