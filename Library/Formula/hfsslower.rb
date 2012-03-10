require 'formula'

class Hfsslower < Formula
  url 'http://static.adit.io/brew/hfsslower.d'
  homepage 'http://dtrace.org/blogs/brendan/2011/10/10/top-10-dtrace-scripts-for-mac-os-x/'
  md5 '667ca213d8a202c209505fb183a1bf64'
  version '0.0.1'

  def install
    bin.install("hfsslower.d")
  end

  def test
    # requires sudo to test :(
    system "true"
  end
end
