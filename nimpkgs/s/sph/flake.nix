{
  description = ''
    Large number of cryptographic hashes for Nim
  '';
  inputs.src-sph.url = "https://github.com/aidansteele/sph";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
