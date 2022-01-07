{
  description = ''
    Latent Dirichlet Allocation
  '';
  inputs.src-lda.url = "https://github.com/andreaferretti/lda";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
