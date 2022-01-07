{
  description = ''
    Variable length arrays for Nim
  '';
  inputs.src-vla.url = "https://github.com/bpr/vla";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
