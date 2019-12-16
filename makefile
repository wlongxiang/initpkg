setup:
	if exist build rmdir /S /Q build
	if exist dist rmdir /S /Q dist
	python setup.py bdist_wheel
install:
	pip uninstall initpkg -y
	pip install --find-links=dist  --no-cache-dir initpkg==0.0.1

test:
	if exist mystuff rmdir /S /Q mystuff
	initpkg mystuff
publish:
	git tag v0.0.1
	git push origin v0.0.1
	twine upload dist/*
