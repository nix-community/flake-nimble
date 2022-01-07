{
  description = ''
    An Adaptive Index Library For Nim
  '';
  inputs.src-adix.url = "https://github.com/c-blake/adix";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
