import subprocess

c.aliases = { 'x': 'quit --save', **c.aliases }
c.auto_save.session = True
c.content.webrtc_ip_handling_policy = 'default-public-interface-only'
c.editor.command = [ 'alacritty', '-e', 'zsh', '-i', '-c', 'nvim {file} +{line}' ]
c.messages.timeout = 5000
c.session.lazy_restore = True
c.tabs.background = True
c.scrolling.smooth = True
c.spellcheck.languages = [ 'en-US' ]

c.url.searchengines = {
    'aw': 'https://wiki.archlinux.org/index.php?search={}',
    'aa': 'https://aur.archlinux.org/packages/?K={}',
    'ap': 'https://archlinux.org/packages/?q={}',
    'dd': 'https://duckduckgo.com/?q={}',
    'gg': 'https://www.google.com/search?q={}',
    'yt': 'https://www.youtube.com/results?search_query={}',
    'gh': 'https://github.com/search?q={}',
    'ghu': 'https://github.com/{}',
    'wi': 'https://en.wikipedia.org/w/index.php?search={}',
    'rs': 'https://doc.rust-lang.org/std/index.html?search={}',
    'rsb': 'https://doc.rust-lang.org/beta/std/index.html?search={}',
    'rsn': 'https://doc.rust-lang.org/nightly/std/index.html?search={}',
    'rsc': 'https://crates.io/search?q={}',
    'rsd': 'https://docs.rs/releases/search?query={}',
    'rsl': 'https://lib.rs/search?q={}',
    'mwd': 'https://www.merriam-webster.com/dictionary/{}',
    'mwt': 'https://www.merriam-webster.com/thesaurus/{}',
    'gld': 'http://docs.gl/gl4/{}',
    'zds': 'https://ziglang.org/documentation/master/std/#?{}',
    **c.url.searchengines
}

c.fonts.default_family = 'VictorMono Nerd Font'
c.fonts.default_size = '9pt'
c.colors.webpage.preferred_color_scheme = 'dark'

config.load_autoconfig()
