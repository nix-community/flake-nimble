{
  description = ''
    sha3 - cryptographic hash function
  '';
  inputs.src-sha3.url = "https://github.com/narimiran/sha3";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
