version :=`rg -o "(\d+)\.(\d+).(\d+)" __init__.py`
@release:
    git tag {{version}}
    git-chglog >| CHANGELOG.md
    git add CHANGELOG.md
    git commit -m "doc: CHANGELOG {{version}}"
