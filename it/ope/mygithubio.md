my github io
===

* powerd by [m10c](https://github.com/vaga/hugo-theme-m10c)

## operation

### new post

```
hugo new post/<mypost>.md
```

### update

1. test
	```
	hugo server -wD
	```
2. build
	```
	hugo
	```
3. publish
	```
	cd public
	git add ./*
	git commit -m 'message'
	git push
	```

### install

```
hugo new site {mysitename}
cd
git clone {theme repository} themes/{name}
git submodule add https://github.com/hinoshiba/hinoshiba.github.io.git public
```
