{
  description = ''
    A package to get the MAC address of a local IP address
  '';
  inputs.src-getmac.url = "https://github.com/PMunch/getmac";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
