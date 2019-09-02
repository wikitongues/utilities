# To use
When logged in and in the edit annotations view, run the following in your browser console

`var ret = /auth_token.*?:.*?"(.*?)"/.exec(document.body.innerHTML); ret[1]`

# youtube-copy-annotations

forked from [stefansundin/youtube-copy-annotations](https://github.com/stefansundin/youtube-copy-annotations)

> Copy YouTube annotations like a pro!

Go to [the website](https://stefansundin.github.io/youtube-copy-annotations/) to try the script right now. Instructions inside.

Post feedback and comments [on the blog post](https://stefansundin.com/blog/277).

You can also [install the userscript](https://github.com/stefansundin/youtube-copy-annotations/raw/gh-pages/youtube_auth_token.user.js).

# Reporting bugs

Please provide enough information so that I can reproduce whatever you are doing. This means:

- Url to the video you are copying annotations from.
- If you edit the XML or not.
