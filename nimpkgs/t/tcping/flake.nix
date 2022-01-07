{
  description = ''
    Ping hosts using tcp packets
  '';
  inputs.src-tcping.url = "https://github.com/pdrb/tcping";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
