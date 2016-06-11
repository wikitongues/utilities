#Youtube Annotations
When logged in and in the edit annotations view, run the following in your browser console

`var ret = /auth_token.*?:.*?"(.*?)"/.exec(document.body.innerHTML); ret[1]`
