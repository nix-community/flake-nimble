{
  description = ''
    Implementation of the Fletcher checksum algorithm.
  '';
  inputs.src-fletcher.url = "https://github.com/Akito13/nim-fletcher";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
