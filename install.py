# -*- encoding: utf-8 -*-
from requests_html import HTMLSession

session = HTMLSession()

# First time need to download chromium.
response = session.get('https://www.google.com')
response.html.render()

session.close()
