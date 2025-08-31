## qutebrowser config.py

import datetime
from typing import TYPE_CHECKING, Any

from qutebrowser.api import interceptor

if TYPE_CHECKING:
    c: Any = object
    config: Any = object

config.load_autoconfig()
# Set default font family and size
c.fonts.default_family = 'JetBrains Mono'
c.fonts.default_size = '15pt'  # Adjust size as needed
c.fonts.web.family.fixed = 'JetBrains Mono'  # Use 'fixed' for monospace

# UI fonts
c.fonts.completion.entry = "12pt default_family"
c.fonts.completion.category = "bold 12pt default_family"
c.fonts.statusbar = "12pt default_family"
c.fonts.tabs.selected = "12pt default_family"
c.fonts.tabs.unselected = "12pt default_family"
c.fonts.hints = "bold 12pt default_family"
c.fonts.keyhint = "12pt default_family"
c.fonts.prompts = "12pt default_family"
c.fonts.debug_console = "12pt default_family"
c.fonts.downloads = "12pt default_family"
c.fonts.messages.info = "12pt default_family"
c.fonts.tooltip = "12pt default_family"

# Web fonts
c.fonts.web.family.standard = "JetBrainsMono Nerd Font"
c.fonts.web.family.fixed = "JetBrainsMono Nerd Font"
c.fonts.web.family.serif = "JetBrainsMono Nerd Font"
c.fonts.web.family.sans_serif = "JetBrainsMono Nerd Font"
c.fonts.web.size.default = 16
c.fonts.web.size.default_fixed = 13
c.fonts.web.size.minimum = 10
c.backend = "webengine"
c.colors.downloads.stop.bg = r"#00cca7"
c.content.blocking.method = "both"
c.content.javascript.enabled = True
c.content.pdfjs = True
c.downloads.position = "bottom"
c.downloads.remove_finished = 5000
c.fonts.default_size = "16pt"
c.hints.auto_follow = "unique-match"
c.hints.auto_follow_timeout = 700
#c.hints.mode = "number"
c.input.insert_mode.auto_enter = True
c.input.insert_mode.auto_leave = True
c.input.insert_mode.auto_load = False
c.tabs.background = False
c.tabs.last_close = "close"
c.tabs.show = "always"
c.url.default_page ="~/newtab.html" 
c.url.searchengines = {
    'DEFAULT': "https://www.google.com/search?q={}",
    # "DEFAULT": "https://duckduckgo.com/?q={}",
    #"wiktionary": "https://wiktionary.org/wiki/{}",
}
c.url.start_pages = c.url.default_page
c.zoom.default = 100


#c.qt.force_software_rendering = "chromium"  # QT grief :')
config.bind(r"<Backspace>", "config-source")
config.bind(r"<Ctrl-W>", "tab-close")
# config.bind(r'<Return>', 'download-clear')
#config.bind(r"<Space>", "cmd-set-text -s :open wiktionary ")
config.bind(r"yt", "tab-clone")
config.bind(r"E", 'spawn --detach brave "{url}"')
config.bind(r"Z", "tab-only")
config.bind(r"d", "scroll-page 0 0.5")
config.bind(r"u", "scroll-page 0 -0.5")
config.bind(r"x", "tab-close")
config.bind(r"X", "undo")
config.bind(r"ch", "history-clear")
config.bind(r"cb", "bookmark-del")
config.bind(r"r", "reload")
config.bind(r"w", "tab-give")
config.bind(r"W", "tab-take 1/1")
config.bind(r"ge", "cmd-set-text :open {url:pretty}")
config.bind("\\", "mode-enter passthrough")
config.unbind('J', mode='normal')
config.unbind('K', mode='normal')
config.bind('J', 'tab-prev', mode='normal')
config.bind('K', 'tab-next', mode='normal')
config.bind('>>', 'tab-move +', mode='normal')
config.bind('<<', 'tab-move -', mode='normal')
config.bind('<z><l>', 'spawn --userscript qute-pass')
config.bind('<z><u><l>', 'spawn --userscript qute-pass --username-only')
config.bind('<z><p><l>', 'spawn --userscript qute-pass --password-only')
config.bind('<z><o><l>', 'spawn --userscript qute-pass --otp-only')

ALLOW_JAVASCRIPT_WEBSITES = (
)

for site in ALLOW_JAVASCRIPT_WEBSITES:
    config.set("content.javascript.enabled", True, site)
    config.set("content.javascript.clipboard", "access-paste", site)


# Block youtube ads
def filter_youtube(info: interceptor.Request):
    """Block given request if necessary"""
    url = info.request_url
    if (
        url.host() == "www.youtube.com"
        and url.path() == "/get_video_info"
        and "&adformat=" in url.query()
    ):
        info.block()


interceptor.register(filter_youtube)


