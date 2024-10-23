cd ~

sudo apt update -y

sudo apt upgrade -y

sudo apt install xdotool git tmux vim neovim curl wget net-tools bat htop gcc g++ pipx wireguard resolvconf maim xclip zsh postgresql-client -y

## install i3
/usr/lib/apt/apt-helper download-file https://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2024.03.04_all.deb keyring.deb SHA256:f9bb4340b5ce0ded29b7e014ee9ce788006e9bbfe31e96c09b2118ab91fca734

sudo apt install ./keyring.deb

echo "deb http://debian.sur5r.net/i3/ $(grep '^DISTRIB_CODENAME=' /etc/lsb-release | cut -f2 -d=) universe" | sudo tee /etc/apt/sources.list.d/sur5r-i3.list

sudo apt update

sudo apt install i3

## install alacritty
sudo add-apt-repository ppa:mmstick76/alacritty

sudo apt install alacritty


## install thefuck

## zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

## clone dotfiles
git clone https://github.com/sebzz2k2/dotfiles

## install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
rm ~/.zshrc
ln -s ~/dotfiles/tmux/.tmux.conf ~/
ln -s ~/dotfiles/.zshrc ~/
ln -s ~/dotfiles/i3 ~/.config
ln -s ~/dotfiles/i3status ~/.config
ln -s ~/dotfiles/nvim ~/.config
ln -s ~/dotfiles/.tmux ~/
ln -s ~/dotfiles/alacritty ~/.config
## nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

nvm install --lts
nvm use --lts



## install lazy git
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin

## wireguard
sudo cp ~/Sebin_wg0.conf /etc/wireguard/wg0.conf

# lazygit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin

echo "install required fonts Eg: Meslo font and fzf"
