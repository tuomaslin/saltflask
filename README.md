# SaltState to install and configure Apache2 and flask.

New users are able to modify templates and their homepage at localhost/~USERNAME/

![Image](/screenshots/result.png)
![Image](/screenshots/curllocalhost.png)

# How to use

- First of all you need atleast Salt-master (preferably also Salt-minion)
- Assign Salt-masters ip in the Salt-minion [(Instructions)](https://tuomaslintula.wordpress.com/2021/11/04/tehtava-h2-2/)
- Use command to run Saltstate

	# From master to minion
	sudo salt '*' state.apply saltflask
	
	# On master only
	sudo salt-call --local state.apply saltflask

- That's it!

# Features

- Makes public_html, python folders in new users home directory
- Edit/run Flask templates

	python3 python/testTemplate.py

![Image](/screenshots/flasktemplate.png)

- New users have their own public_html/index.html file that they can edit

![Image](/screenshots/publichtml.png)

