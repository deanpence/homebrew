require 'formula'

class Star < Formula
  url 'ftp://ftp.berlios.de/pub/star/star-1.5.1.tar.bz2'
  homepage 'http://freshmeat.net/projects/star/'
  md5 'f9a28f83702624c4c08ef1a343014c7a'

  depends_on "smake"

  def install
    system "smake", "GMAKE_NOWARN=true", "INS_BASE=#{prefix}", "MANDIR=share/man"
    system "smake", "GMAKE_NOWARN=true", "INS_BASE=#{prefix}", "MANDIR=share/man", "install"
  end
end
