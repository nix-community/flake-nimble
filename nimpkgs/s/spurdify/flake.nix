{
  description = ''
    Spurdification library and CLI
  '';
  inputs.src-spurdify.url = "https://github.com/paradox460/spurdify";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
