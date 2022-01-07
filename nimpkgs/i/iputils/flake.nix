{
  description = ''
    Utilities for use with IP. It has functions for IPv4, IPv6 and CIDR.
  '';
  inputs.src-iputils.url = "https://github.com/rockcavera/nim-iputils";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
