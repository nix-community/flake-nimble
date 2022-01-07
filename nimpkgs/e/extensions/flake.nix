{
  description = ''
    A library that will add useful tools to Nim's arsenal.
  '';
  inputs.src-extensions.url = "https://github.com/jyapayne/nim-extensions";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
