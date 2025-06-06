# Beego Web

[![Requirement >= Go 1.2rc1](http://b.repl.ca/v1/Requirement-%3E%3D_Go%201.2rc1-blue.png)]() [![Requirement >= beego 0.9.9](http://b.repl.ca/v1/Requirement-%3E%3D_beego%200.9.9-blue.png)]()

An open source project for official documentation website of beego app framework.

:warning: ARCHIVED REPO :warning:

Please note that this repo is-being or have-been replaced by [beego/beego-doc](https://github.com/beego/beego-doc) - Please DO NOT open any new Issue / PR on this repo.

## Install site locally

Once cloned/downloaded, you can do some of the following within the project folder:

- Build and run with Go tools:

  ```sh
  go get
  go build
  ./beeweb
  ```

- Or build with bee tool:

  ```sh
  bee run
  ```

Then you can open your browser and visit [http://localhost:8080](http://localhost:8080).

## Build as your site

This project can be easily transferred as your own documentation site, there are some tips that you may want to know:

- In the file `conf/app.ini`:

	- `lang -> types`: languages that you want to support
	- `lang -> names`: user-friendly name of languages.
	- It's **NOT** necessary but if you want to you can use GitHub app keys as following format:

			[github]
			client_id=1862bcb2******f36c
			client_secret=308d71ab53ccd858416cfceaed52******53c5f

- In the file `conf/docTree.json`:

	- This file saves the file tree(with file name and commit) of your project that is hosted in GitHub. About how to use documentation project please see [beedoc](http://github.com/beego/beedoc). Note that if you added new section to documentation list and you do not want to wait auto-refresh, simple delete this file and restart.
	- To change the documentation project URL, you need to change it in function `checkDocUpdates` in file `models/models.go`, as well as somewhere in `views`.