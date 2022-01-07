{
  description = ''
    Preserves data model and serialization format
  '';
  inputs.src-preserves.url = "https://git.sr.ht/~ehmry/preserves-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
