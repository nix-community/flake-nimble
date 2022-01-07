{
  description = ''
    Nim wrapper for the Chromium Embedded Framework
  '';
  inputs.src-nimCEF.url = "https://github.com/jangko/nimCEF";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
