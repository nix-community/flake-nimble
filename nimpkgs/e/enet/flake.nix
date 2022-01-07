{
  description = ''
    Wrapper for ENet UDP networking library
  '';
  inputs.src-enet.url = "https://github.com/fowlmouth/nimrod-enet/";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
