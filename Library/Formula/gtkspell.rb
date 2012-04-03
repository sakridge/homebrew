require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Gtkspell < Formula
  homepage 'http://gtkspell.sourceforge.net/'
  url 'http://downloads.sourceforge.net/project/gtkspell/2.0.16/gtkspell-2.0.16.tar.gz'
  md5 'f75dcc9338f182c571b321d37c606a94'

  depends_on 'gtk+' => :build
  depends_on 'enchant' => :build

  def install
    # ENV.x11 # if your formula requires any X11 headers
    # ENV.j1  # if your formula's build system can't parallelize

    system "./configure", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install" # if this fails, try separate make/make install steps
  end

  def test
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test gtkspell`.
    system "false"
  end
end
