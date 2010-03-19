# Site Title

This simple extension for Radiant CMS provides a tag for the output of
the title of the site. The site title should be set in a configuration
setting with a key of 'site.title'. 

Also allows for the option to output the site title along with the page
title, as would be displayed in the <title> tag of a HTML page.

## Examples

`<r:site:title />`

*outputs*

Your Site Title

`<r:site:title with_page_title="true" />`

*outputs*

Your Page Title » Your Site Title

`<r:site:title with_page_title="true" separator=" | " />`

*outputs*

Your Page Title | Your Site Title
