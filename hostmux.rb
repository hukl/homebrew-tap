class Hostmux < Formula
  desc "Wrapper script for tmux to connect to a list of hosts via ssh"
  homepage "https://github.com/hukl/hostmux/"
  url "https://github.com/hukl/hostmux/archive/1.3.0.tar.gz"
  version "1.3.0"
  sha256 "1112fb094e6f808afad0b8e6f4589c314aac6249b961d23449bdcd9d8311c614"

  depends_on "tmux"

  def install
    bin.install "hostmux"
    man1.install "man/hostmux.1"
    zsh_completion.install "zsh-completion/_hostmux"
  end

  test do
    system "hostmux"
  end
end
