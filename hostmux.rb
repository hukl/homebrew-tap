class Hostmux < Formula
  desc "Wrapper script for tmux to connect to a list of hosts via ssh"
  homepage "https://github.com/hukl/hostmux/"
  url "https://github.com/hukl/hostmux/archive/1.0.0.tar.gz"
  version "1.0.0"
  sha256 "83b0e55f728d7ac1f1a6929477648a9319e6bacfce3502ae4abf0727ac57ca67"

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
