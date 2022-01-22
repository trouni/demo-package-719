install_requirements:
	@pip install -r requirements.txt

install:
	@pip install .

install_dev:
	@pip install -r requirements-dev.txt
	@pip install -e .

uninstall:
	@pip uninstall -y package719

test:
	@coverage run -m pytest tests/*.py
	@coverage report -m --omit=$(VIRTUAL_ENV)/lib/python*

clean:
	@rm -f */version.txt
	@rm -f .coverage
	@rm -Rf */__pycache__
	@rm -Rf */*.pyc

all: install_requirements install test
