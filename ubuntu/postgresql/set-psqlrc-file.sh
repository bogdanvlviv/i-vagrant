cat <<EOF | tee ~/.psqlrc > /dev/null
\setenv PAGER less
\setenv LESS -S
EOF
