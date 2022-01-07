{
  description = ''
    A pure Nim Domain Name System (DNS) client
  '';
  inputs.src-ndns.url = "https://github.com/rockcavera/nim-ndns";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
