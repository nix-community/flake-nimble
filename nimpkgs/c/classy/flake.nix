{
  description = ''
    typeclasses for Nim
  '';
  inputs.src-classy.url = "https://github.com/nigredo-tori/classy";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
