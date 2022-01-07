{
  description = ''
    The Hypixel API, in Nim.
  '';
  inputs.src-hypixel.url = "https://github.com/tonogram/hypixel-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
