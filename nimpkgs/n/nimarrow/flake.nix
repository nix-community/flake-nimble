{
  description = ''
    apache arrow bindings for nim
  '';
  inputs.src-nimarrow.url = "https://github.com/emef/nimarrow";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
