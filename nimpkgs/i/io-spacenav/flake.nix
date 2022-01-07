{
  description = ''
    Obsolete - please use spacenav instead!
  '';
  inputs.src-io-spacenav.url = "https://github.com/nimious/io-spacenav.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
