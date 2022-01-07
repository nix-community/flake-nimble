{
  description = ''
    Gene - a general purpose language
  '';
  inputs.src-gene.url = "https://github.com/gcao/gene-new";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
