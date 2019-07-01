# -*- coding: UTF-8 -*-

import re, random, string

def get_authcode(digit):
    while True:
        tmp = random.sample(string.ascii_letters + string.digits, digit)
        passwd = ''.join(tmp)
        if re.search('[0-9]', passwd) and re.search('[A-Z]', passwd) and re.search('[a-z]', passwd):
            return passwd
