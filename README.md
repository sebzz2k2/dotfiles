
### Update and Upgrade System
```bash
cd ~ # Navigate to the home directory
sudo apt update -y # Update the list of available packages and their versions
sudo apt upgrade -y # Install the newest versions of all packages currently installed
```

### Install Essential Packages
```bash
sudo apt install xdotool git tmux scrot vim neovim curl wget net-tools bat htop gcc g++ pipx wireguard resolvconf maim xclip zsh postgresql-client -y
```
### Install various essential utilities and tools:
 - xdotool: A tool for simulating keyboard input and mouse activity
 - scrot : A screenshot utility for lock screen
 - git: Version control system
 - tmux: Terminal multiplexer
 - vim: Text editor
 - neovim: Enhanced version of Vim
 - curl: Command-line tool for transferring data with URLs
 - wget: Network downloader
 - net-tools: Networking tools
 - bat: A clone of cat(1) with syntax highlighting and Git integration
 - htop: Interactive process viewer
 - gcc, g++: GNU Compiler Collection
 - pipx: Install and run Python applications in isolated environments
 - wireguard: VPN service
 - resolvconf: Manage nameserver information
 - maim: Utility to take screenshots
 - xclip: Command line interface to the X11 clipboard
 - zsh: Shell designed for interactive use
 - postgresql-client: PostgreSQL client utilities

### Install i3 Window Manager
```bash
/usr/lib/apt/apt-helper download-file https://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2024.03.04_all.deb keyring.deb SHA256:f9bb4340b5ce0ded29b7e014ee9ce788006e9bbfe31e96c09b2118ab91fca734
```
### Download the keyring for the i3 repository
```bash
sudo apt install ./keyring.deb # Install the keyring
echo "deb http://debian.sur5r.net/i3/ $(grep '^DISTRIB_CODENAME=' /etc/lsb-release | cut -f2 -d=) universe" | sudo tee /etc/apt/sources.list.d/sur5r-i3.list
```
### Add the i3 repository to your sources list
```bash
sudo apt update # Update package lists
sudo apt install i3 # Install i3 window manager
```
### Install Alacritty Terminal
```bash
sudo add-apt-repository ppa:mmstick76/alacritty # Add the Alacritty PPA
sudo apt install alacritty # Install Alacritty terminal emulator
```
### Install thefuck
```bash
pipx install thefuck # Install 'thefuck', a command-line tool to correct errors in previous commands
```
### Install Oh My Zsh
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
### Install Oh My Zsh, a framework for managing your zsh configuration

### Clone Dotfiles
```bash
git clone https://github.com/sebzz2k2/dotfiles # Clone the dotfiles repository
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm # Clone the tmux plugin manager
ln -s ~/dotfiles/.tmux.conf ~/ # Create a symbolic link for tmux configuration
ln -s ~/dotfiles/.zshrc ~/ # Create a symbolic link for zsh configuration
ln -s ~/dotfiles/i3 ~/.config # Create a symbolic link for i3 configuration
ln -s ~/dotfiles/i3status ~/.config # Create a symbolic link for i3status configuration
ln -s ~/dotfiles/nvim ~/.config # Create a symbolic link for neovim configuration
ln -s ~/dotfiles/.tmux ~/ # Create a symbolic link for tmux directory
ln -s ~/dotfiles/alacritty ~/.config # Create a symbolic link for Alacritty configuration
```
### Install Node.js and Download and install nvm (Node Version Manager)
```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
nvm install --lts # Install the latest LTS version of Node.js
nvm use --lts # Use the latest LTS version of Node.js
```

### Install Lazygit
```bash
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit # Extract the downloaded file
sudo install lazygit /usr/local/bin # Move Lazygit to a directory in your PATH
```
### Configure WireGuard
```bash
sudo cp ~/Sebin_wg0.conf /etc/wireguard/wg0.conf # Copy WireGuard configuration file
```
 **Reminder to install required fonts (e.g., Meslo font) and fzf (a command-line fuzzy finder)**
