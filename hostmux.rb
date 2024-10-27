class Hostmux < Formula
  desc "Wrapper script for tmux to connect to a list of hosts via ssh"
  homepage "https://github.com/hukl/hostmux/"
  url "https://github.com/hukl/hostmux/archive/1.4.1.tar.gz"
  version "1.4.1"
  sha256 "6c7255ea5feb92faf53074062a63ca148389c459e7da22475c20c219f2fee6a2"

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
