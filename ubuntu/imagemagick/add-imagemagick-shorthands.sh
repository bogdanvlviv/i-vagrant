#!/usr/bin/env bash

cat <<EOF | sudo tee /usr/local/bin/montage_side_by_side > /dev/null
#!/usr/bin/env bash

montage -background lightgray -pointsize 60 -label '%t' "\$@" -tile x1 -geometry '+30+30' combined.png
EOF

sudo chmod 755 /usr/local/bin/montage_side_by_side
