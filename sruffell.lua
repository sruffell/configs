---------------
--  Options  --
---------------

options.timeout = 120
options.subscribe = true
options.info = true

----------------
--  Accounts  --
----------------

-- Another account which connects to the mail server using the SSLv3
-- protocol.
account1 = IMAP {
    server = 'zimbra.digium.com',
    username = 'sruffell',
    ssl = 'ssl3',
}

-- Get a list of the available mailboxes and folders
mailboxes, folders = account1:list_all()

-- Get a list of the subscribed mailboxes and folders
mailboxes, folders = account1:list_subscribed()

-----------------
--  Mailboxes  --
-----------------

-- Get the status of a mailbox
account1.INBOX:check_status()

-- Yocto Project
results = account1.INBOX:contain_field('List-Id', 'yocto.yoctoproject.org')
results:move_messages(account1['INBOX/lists/yocto'])

-- Asterisk-users
results = account1.INBOX:contain_field('List-Id', 'asterisk-users')
results:move_messages(account1['INBOX/lists/asterisk-users'])

-- Asterisk-dev
results = account1.INBOX:contain_field('List-Id', 'asterisk-dev')
results:move_messages(account1['INBOX/lists/asterisk-dev'])

-- JIRA emails sent to the swdev list
results = account1.INBOX:contain_field('List-Id', 'swdev.lists.digium.internal') *
	  account1.INBOX:contain_field('X-Jira-Fingerprint', '')
results:move_messages(account1['INBOX/lists/jira'])

-- Internal software development discussions
results = account1.INBOX:contain_field('List-Id', 'swdev.lists.digium.internal')
results:move_messages(account1['INBOX/lists/swdev'])
--
-- Internal hardware development discussions
results = account1.INBOX:contain_field('List-Id', 'hwdev')
results:move_messages(account1['INBOX/lists/hwdev'])
