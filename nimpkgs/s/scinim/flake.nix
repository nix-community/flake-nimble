{
  description = ''
    The core types and functions of the SciNim ecosystem
  '';
  inputs.src-scinim.url = "https://github.com/SciNim/scinim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
