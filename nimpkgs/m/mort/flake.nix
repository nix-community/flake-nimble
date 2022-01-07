{
  description = ''
    A dead code locator for Nim
  '';
  inputs.src-mort.url = "https://github.com/jyapayne/mort";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
