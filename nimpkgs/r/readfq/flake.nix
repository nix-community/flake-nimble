{
  description = ''
    Wrapper for Heng Li's kseq
  '';
  inputs.src-readfq.url = "https://github.com/andreas-wilm/nimreadfq";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
