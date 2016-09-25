# Documentation: https://github.com/Homebrew/brew/blob/master/docs/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Kangoext < Formula
  desc "Kango Extensions Wrapper for Homebrew"
  homepage "http://kangoextensions.com/"
  url "https://github.com/tilast/kangoext/archive/1.0.3.tar.gz"
  version "1.0.3"
  sha256 "7cc882695cb388c9552c38d1d1e3091d181bde187ad999c9eec016f10187fab0"

  def install
    system './configure'
    prefix.install Dir["kango-archive/*"]
    bin.install_symlink prefix/"kangoext"
  end

  test do
    system "kangoext -h"
  end
end
