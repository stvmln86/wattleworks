#!/usr/bin/env fish
# Functions for common Hugo commands.

function wnew -a slug
    set dest (date "+content/posts/%Y/%m/$slug.md")
    hugo new $dest
    zed $dest
end

function wserve
    hugo serve --buildFuture --cleanDestinationDir --destination public/serve --minify
end
