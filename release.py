#!/usr/bin/env python
'''
ANSI blocks font release script.
'''

import fontforge


# Open the font
f = fontforge.open('ansi-blocks.sfd')

# Generate the fonts
f.generate('dist/ansi-blocks.ttf')
f.generate('dist/ansi-blocks.woff2')
