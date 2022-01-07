{
  description = ''
    A wrapper for the graphviz c api.
  '';
  inputs.src-nimviz.url = "https://github.com/Rekihyt/nimviz";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
