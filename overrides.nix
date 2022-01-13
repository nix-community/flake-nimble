pkgs: with pkgs; {
  alsa.propagatedBuildInputs = [ alsa-lib ];
  assimp.propagatedBuildInputs = [ assimp ];
  cairo.propagatedBuildInputs = [ cairo ];
  inim = {
    patches = [ ./patches/inim.patch ];
    doCheck = false;
  };
  ncurses.propagatedBuildInputs = [ ncurses ];
  lmdb.propagatedBuildInputs = [ lmdb ];
  opusenc.propagatedBuildInputs = [ libopus libopusenc pkgconfig ];
  rocksdb.propagatedBuildInputs = [ rocksdb ];
  sdl2.propagatedBuildInputs = [ SDL2 ];
  tkrzw = {
    propagatedBuildInputs = [ tkrzw ];
    nativeBuildInputs = [ pkg-config ];
  };
  toxcore = {
    propagatedBuildInputs = [ libtoxcore ];
    propagatedNativeBuildInputs = [ pkg-config ];
  };
  ui = {
    propagatedBuildInputs = [ libui ];
    propagatedNativeBuildInputs = [ pkg-config ];
    postPatch = ''
      echo {.passL: r\"$(pkg-config --libs libui)\".} >> ui/rawui.nim
    '';
  };
}
