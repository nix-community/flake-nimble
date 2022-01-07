{
  description = ''
    Nim object validation using type field pragmas
  '';
  inputs.src-validation.url = "https://github.com/captainbland/nim-validation";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
