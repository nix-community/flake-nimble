{
  description = ''
    Helper library for writing Wox plugins in Nim
  '';
  inputs.src-wox.url = "https://github.com/roose/nim-wox";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
