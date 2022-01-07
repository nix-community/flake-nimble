{
  description = ''
    Pseudo-random number generation library inspired by Python
  '';
  inputs.src-random.url = "https://github.com/oprypin/nim-random";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
