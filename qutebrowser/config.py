import subprocess

config.load_autoconfig()

c.aliases = { 'x': 'quit --save', **c.aliases }
c.auto_save.session = True
c.content.webrtc_ip_handling_policy = 'default-public-interface-only'
c.editor.command = [ 'foot', 'zsh', '-i', '-c', 'nvim', '{file}', '+{line}' ]
c.messages.timeout = 5000
c.session.lazy_restore = True
c.tabs.background = True
c.spellcheck.languages = [ 'en-US' ]

c.colors.webpage.darkmode.enabled = True
