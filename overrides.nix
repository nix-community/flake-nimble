pkgs: {
  hottext.HOTTEXT_FONT_PATH =
    "${pkgs.gentium}/share/fonts/truetype/GentiumPlus-R.ttf";
  opusenc.propagatedBuildInputs = with pkgs; [ libopus libopusenc pkgconfig ];
  sdl2.propagatedBuildInputs = with pkgs; [ SDL2 ];
  toxcore.propagatedBuildInputs = with pkgs; [ libtoxcore ];
}
