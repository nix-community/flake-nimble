{
  description = ''
    proc to join (and leave) a multicast group
  '';
  inputs.src-multicast.url = "https://github.com/enthus1ast/nimMulticast";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
