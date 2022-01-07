{
  description = ''
    htslib wrapper for nim
  '';
  inputs.src-hts.url = "https://github.com/brentp/hts-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
