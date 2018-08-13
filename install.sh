#!/bin/bash

rm -rf mini-arm-os

git clone https://github.com/jserv/mini-arm-os.git && cd mini-arm-os
git checkout c90876a88e215fbc9b24761bdcde845ecab67ba7

git config core.whitespace fix

git apply  --stat  ../0001-multithreading-it-looks-like-it-s-working.patch
git apply  --check  ../0001-multithreading-it-looks-like-it-s-working.patch
git apply  --whitespace=fix  ../0001-multithreading-it-looks-like-it-s-working.patch

git apply  --stat  ../0002-use-custom-malloc-free-and-display-count-to-show-it-.patch
git apply  --check  ../0002-use-custom-malloc-free-and-display-count-to-show-it-.patch
git apply  --whitespace=fix  ../0002-use-custom-malloc-free-and-display-count-to-show-it-.patch

git apply  --stat  ../0003-example-with-some-bugs.patch
git apply  --check  ../0003-example-with-some-bugs.patch
git apply  --whitespace=fix  ../0003-example-with-some-bugs.patch

git apply  --stat  ../0004-two-bugs-vulns-in-mini-arm-os.patch
git apply  --check  ../0004-two-bugs-vulns-in-mini-arm-os.patch
git apply  --whitespace=fix  ../0004-two-bugs-vulns-in-mini-arm-os.patch

git apply  --stat  ../0005-bug-was-due-to-our-change.patch
git apply  --check  ../0005-bug-was-due-to-our-change.patch
git apply  --whitespace=fix  ../0005-bug-was-due-to-our-change.patch

git apply  --stat  ../0006-example-of-CFI.patch
git apply  --check  ../0006-example-of-CFI.patch
git apply  --whitespace=fix  ../0006-example-of-CFI.patch
