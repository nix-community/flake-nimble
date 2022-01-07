{
  description = ''
    An Atom, RSS, and JSONfeed parser
  '';
  inputs.src-feednim.url = "https://github.com/johnconway/feed-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
