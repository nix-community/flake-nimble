{
  description = ''
    OpenBSDs pledge(2) for Nim.
  '';
  inputs.src-pledge.url = "https://github.com/euantorano/pledge.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
