rm TODO.md
LINES=$(grep -orPh "\[([^\(]*?[^\(])\]\(\/TODO.md\)" --include \*.md)
echo '# TODO' > TODO.md
echo $LINES | sed -e 's|\[|- \[ \] |g' -e 's|](/TODO.md)|\n|g' | sort -u >> TODO.md
