{
  description = ''
    fragment-aware assembler for short reads
  '';
  inputs.src-falas.url = "https://github.com/brentp/falas";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
