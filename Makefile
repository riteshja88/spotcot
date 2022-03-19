# Makefile for Python Spot Cursor-on-Target Gateway.
#
# Source:: https://github.com/ampledata/spotcot
# Author:: Greg Albrecht W2GMD <oss@undef.net>
# Copyright:: Copyright 2020 Orion Labs, Inc.
# License:: Apache License, Version 2.0
nn#


.DEFAULT_GOAL := all


all: develop

install_requirements:
	pip install -r requirements.txt

install_requirements_test:
		pip install -r requirements_test.txt

develop: remember
	python setup.py develop

install: remember
	python setup.py install

uninstall:
	pip uninstall -y spotcot

reinstall: uninstall install

remember:
	@echo
	@echo "Hello from the Makefile..."
	@echo "Don't forget to run: 'make install_requirements'"
	@echo

remember_test:
	@echo
	@echo "Hello from the Makefile..."
	@echo "Don't forget to run: 'make install_requirements_test'"
	@echo

clean:
	@rm -rf *.egg* build dist *.py[oc] */*.py[co] cover doctest_pypi.cfg \
		nosetests.xml pylint.log output.xml flake8.log tests.log \
		test-result.xml htmlcov fab.log .coverage

publish:
	python setup.py register sdist upload


pep8: remember_test
	flake8 --max-complexity 12 --exit-zero *.py spotcot/*.py tests/*.py

flake8: pep8

lint: remember_test
	pylint --msg-template="{path}:{line}: [{msg_id}({symbol}), {obj}] {msg}" \
		-r n *.py spotcot/*.py tests/*.py || exit 0

pylint: lint

test: lint pep8 pytest

checkmetadata:
	python setup.py check -s --restructuredtext


build_pip_package_centos7_deps:
	yum install python3 -y
	python3 -m pip install --upgrade pip build

build_pip_package_centos7: build_pip_package_centos7_deps
	python3 -m build

upload_pip_package_centos7_deps:
	#python3 -m pip install --upgrade setuptools-rust pip twine
	python3 -m pip install --upgrade setuptools-rust pip twine

upload_pip_package_centos7: upload_pip_package_centos7_deps
	python3 -m twine upload --skip-existing --repository testpypi dist/*
	#user: __token__
	#password: pypi-AgENdGVzdC5weXBpLm9yZwIkYmY0ZWE2ZDctZjA1Yi00MTIzLWJjZTMtMmYyM2ZmMzg4OThkAAIleyJwZXJtaXNzaW9ucyI6ICJ1c2VyIiwgInZlcnNpb24iOiAxfQAABiBqGQ6....
build_and_upload_pip: build_pip_package_centos7 upload_pip_package_centos7
