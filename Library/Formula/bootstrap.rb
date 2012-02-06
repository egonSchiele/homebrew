require 'formula'

class Bootstrap <Formula
  url 'http://twitter.github.com/bootstrap/assets/bootstrap.zip'
  homepage 'http://twitter.github.com/bootstrap/index.html'
  md5 '47739d7abb48a70b69062f21991fdfcf'
  version '2.0.0'

  # depends_on 'cmake'

  def install
=begin
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    # system "cmake . #{std_cmake_parameters}"
    system "make install"
=end
    system "cp -r #{Dir.pwd} #{ENV['PWD']}/bootstrap"
  end
end
