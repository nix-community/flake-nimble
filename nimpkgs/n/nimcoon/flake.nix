{
  description = ''
    A command-line YouTube player and more
  '';
  inputs.src-nimcoon.url = "https://njoseph.me/gitweb/nimcoon.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
