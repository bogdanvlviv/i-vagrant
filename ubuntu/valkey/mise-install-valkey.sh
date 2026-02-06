sudo apt update

sudo apt install -y build-essential

mise plugins install valkey https://gitlab.com/gitlab-org/quality/tooling/mise-valkey.git

mise use --global valkey@$1
mise reshim
