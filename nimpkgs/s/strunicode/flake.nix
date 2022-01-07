{
  description = ''
    Swift-like unicode string handling
  '';
  inputs.src-strunicode.url = "https://github.com/nitely/nim-strunicode";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
