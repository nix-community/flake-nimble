{
  description = ''
    Last.FM API bindings
  '';
  inputs.src-lastfm.url = "https://gitlab.com/tandy1000/lastfm-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
