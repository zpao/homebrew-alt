require 'formula'

class Autoconf213 < Formula
  url 'http://ftpmirror.gnu.org/autoconf/autoconf-2.13.tar.gz'
  homepage 'http://www.gnu.org/software/autoconf/'
  md5 '9de56d4a161a723228220b0f425dc711'

  depends_on 'gawk'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--program-suffix=213",
                          "--prefix=#{prefix}"
    system "make install"
  end
end
