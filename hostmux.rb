class Hostmux < Formula
  desc "Wrapper script for tmux to connect to a list of hosts via ssh"
  homepage "https://github.com/hukl/hostmux/"
  url "https://github.com/hukl/hostmux/archive/1.2.0.tar.gz"
  version "1.2.0"
  sha256 "127d1072100b266f3ed65172cf8e7494d6ebaa2a306fe163df19335f63ee7dfe"

  depends_on "tmux"

  def install
    system "make"
    bin.install "hostmux"
    man1.install "man/hostmux.1"
    zsh_completion.install "zsh-completion/_hostmux"
  end

  test do
    system "hostmux"
  end
end
