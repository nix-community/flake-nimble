{
  description = ''
    RFC3339 (dates and times) implementation for Nim.
  '';
  inputs.src-rfc3339.url = "https://github.com/Skrylar/rfc3339";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
