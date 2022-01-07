{
  description = ''
    AJAX wrapper for nim js backend.
  '';
  inputs.src-ajax.url = "https://github.com/stisa/ajax";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
