{
  description = ''
    Parsing language
  '';
  inputs.src-lilt.url = "https://github.com/quelklef/lilt";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
