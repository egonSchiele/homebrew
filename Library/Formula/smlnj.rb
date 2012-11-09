require 'formula'

class Smlnj < Formula
  homepage 'http://www.smlnj.org/'
  url 'http://smlnj.cs.uchicago.edu/dist/working/110.75/config.tgz'
  sha1 '527cb179b48abcf1463089d168b171fd05eb814d'
  version '110.75'

  env :std

  def install
    ENV.deparallelize
    # smlnj is much easier to build if we do so in the directory where it
    # will be installed.  Thus, we're moving it to the prefix to be built
    # there.
    cd '..'
    libexec.install 'config'
    rm (libexec+'config/targets') # Rewrite targets list
    (libexec+'config/targets').write targets
    cd libexec
    system 'config/install.sh'
  end

  def caveats
    <<-EOS.undent
    This formula spews ML files all over lib, and puts hidden subfolders in bin.
    Because of this, we've installed it to:
      #{libexec}
    and we haven't linked it into #{HOMEBREW_PREFIX}

    You'll need to add:
      #{libexec}/bin
    to your PATH.

    Improvements are welcome.
    EOS
  end

  def targets
<<-EOS
request ml-ulex
request ml-ulex-mllex-tool
request ml-lex
request ml-lex-lex-ext
request ml-yacc
request ml-yacc-grm-ext
request ml-antlr
request ml-lpt-lib
request ml-burg
request smlnj-lib
request tdp-util
request cml
request cml-lib
request mlrisc
request ckit
request heap2asm
EOS
  end

end
