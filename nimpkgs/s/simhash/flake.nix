{
  description = ''
    Nim implementation of simhash algoritim
  '';
  inputs.src-simhash.url = "https://github.com/bung87/simhash-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
