# SaltState to install and configure Apache2 and flask.

New users are able to modify templates and their homepage at localhost/~USERNAME/

![Image](/screenshots/result.png)
![Image](/screenshots/curllocalhost.png)

# How to use

- First of all you need atleast Salt-master (preferably also Salt-minion)
- Connect Salt.minion to Salt-master [(Instructions)](https://tuomaslintula.wordpress.com/2021/11/04/tehtava-h2-2/)
- Git clone this repository to `/srv/salt/`
- Use command to run Saltstate

	## From master to minion
		sudo salt '*' state.apply saltflask
	
	## On master only
		sudo salt-call --local state.apply saltflask

- That's it!

# Features

- SaltState is idenpotent
- It creates public_html and python folders in new users home directory automatically
- It replaces Apaches default page
- New users can edit/run Flask templates

	python3 python/testTemplate.py

![Image](/screenshots/flasktemplate.png)

- New users have their own public_html/index.html file that they can edit

![Image](/screenshots/publichtml.png)

# Credits

Huge thanks to [Tero Karvinen](https://terokarvinen.com/) for this course! It was named Palvelinten hallinta - ICT4TN022-3014
