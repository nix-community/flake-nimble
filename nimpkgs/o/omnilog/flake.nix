{
  description = ''
    Advanced logging library for Nim with structured logging, formatters, filters and writers.
  '';
  inputs.src-omnilog.url = "https://github.com/nim-appkit/omnilog";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
