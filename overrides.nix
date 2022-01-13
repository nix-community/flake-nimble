pkgs: {
  opusenc.propagatedBuildInputs = with pkgs; [ libopus libopusenc pkgconfig ];
  sdl2.propagatedBuildInputs = with pkgs; [ SDL2 ];
  tkrzw = with pkgs; {
    propagatedBuildInputs = [ tkrzw ];
    nativeBuildInputs = [ pkg-config ];
  };
  toxcore.propagatedBuildInputs = with pkgs; [ libtoxcore ];
  inim.patches = [ ./patches/inim.patch ];
}
