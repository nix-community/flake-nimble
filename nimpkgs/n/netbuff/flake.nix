{
  description = ''
    Fast and unsafe byte buffering for intensive network data transfer.
  '';
  inputs.src-netbuff.url = "https://github.com/jakubDoka/netbuff";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
