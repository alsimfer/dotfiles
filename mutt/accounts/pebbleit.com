
source ~/.mutt/authentication/george@pebbleit.com                 
source ~/.mutt/colors/ir_black.mutt                  

set sort=threads 
set sort_browser=reverse-date 
set sort_aux=last-date-received 
set folder = "imaps://mail.pebbleit.com:993"
set realname="George Ornbo"
set from="george@pebbleit.com"
set spoolfile = "+INBOX"
set postponed = "+/Drafts"
set record = "+/Sent Items"
set trash = "+/Deleted Items"

set signature = "~/.mutt/signatures/pebbleit.com.txt"
set header_cache =~/.mutt/cache/pebble.it/headers
set message_cachedir =~/.mutt/cache/pebble.it/bodies
set certificate_file =~/.mutt/certificates
bind editor <space> noop
set imap_keepalive = 900


