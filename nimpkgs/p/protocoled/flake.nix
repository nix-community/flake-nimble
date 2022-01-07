{
  description = ''
    an interface macro
  '';
  inputs.src-protocoled.url = "https://github.com/planetis-m/protocoled";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
