#!/bin/bash

# Cập nhật số lượng stars
STARS=$(curl -s https://api.github.com/repos/megait004/megait004 | jq '.stargazers_count')

# Cập nhật số lượng visitors
VISITORS=$(curl -s https://visitor-badge.glitch.me/badge?page_id=megait004 | jq '.count')

# Thay thế nội dung trong README.md
sed -i "s/\[stars\](.*)/[stars](https:\/\/img.shields.io\/github\/stars\/megait004\/megait004?style=social)/" README.md
sed -i "s/\[visitors\](.*)/[visitors](https:\/\/visitor-badge.glitch.me\/badge?page_id=megait004&left_color=green&right_color=red)/" README.md
