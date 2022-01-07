{
  description = ''
    A better regular expression library
  '';
  inputs.src-nre.url = "https://github.com/flaviut/nre.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
