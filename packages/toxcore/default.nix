{ nixpkgs, nimblepkgs }:

{
  description = "C Tox core wrapper";

  # license = lib.licenses.gpl3Plus;

  foreignDeps = with nixpkgs; [ libtoxcore pkgconfig ];

  requires = {
    nim = {
      low = "1.2.0";
      high = "2.0.0";
    };
  };

}
