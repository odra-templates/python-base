update-pip:
	pip install -U pip

update-deps:
	pip freeze > requirements.txt

install-deps: update-pip
	pip install -U -r requirements.txt

test:
	py.test -s

build:
	python setup.py build

install:
	python setup.py install

clean:
	rm -rf build dist *.egg-info

docs-html:
	cd docs && $(MAKE) html

all: clean deps test build
