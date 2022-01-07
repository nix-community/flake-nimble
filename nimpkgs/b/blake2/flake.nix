{
  description = ''
    blake2 - cryptographic hash function
  '';
  inputs.src-blake2.url = "https://github.com/narimiran/blake2";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
