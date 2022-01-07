{
  description = ''
    Binding for Intel Storage Acceleration library
  '';
  inputs.src-isa.url = "https://github.com/nimscale/isa";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
