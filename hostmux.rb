class Hostmux < Formula
  desc "Wrapper script for tmux to connect to a list of hosts via ssh"
  homepage "https://github.com/hukl/hostmux/"
  url "https://github.com/hukl/hostmux/archive/1.3.0.tar.gz"
  version "1.3.0"
  sha256 "044e6a2adebbd9d8bddaeae8cc95263cbd0fbda5591d34a38c673829bbe47295"

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
