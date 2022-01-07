{
  description = ''
    Block copy of any text in HTML
  '';
  inputs.src-htmlAntiCopy.url = "https://github.com/thisago/htmlAntiCopy";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
