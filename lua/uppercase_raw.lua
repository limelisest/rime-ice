-- Put two-or-more all-uppercase ASCII letters ahead of English completion candidates.
-- Mixed/lowercase input is left untouched so existing P2P, X光, and Chinese paths keep working.

local M = {}

function M.func(input, seg, _)
    if input:match("^%u%u+$") then
        local cand = Candidate("uppercase_raw", seg.start, seg._end, input, "")
        cand.quality = 100
        yield(cand)
    end
end

return M
