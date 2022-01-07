{
  description = ''
    Bindings for the Sixense Core API.
  '';
  inputs.src-sixense.url = "https://github.com/nimious/sixense.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
