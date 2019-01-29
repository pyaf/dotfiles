import subprocess

dmenu = subprocess.Popen(['ruby', '/home/ags/.fzf/bin/fzf'],
        stdin=subprocess.PIPE,
        stdout=subprocess.PIPE)
