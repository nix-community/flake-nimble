{
  description = ''
    Simple and lightweight OPDS ebook server
  '';
  inputs.src-tsundoku.url = "https://github.com/FedericoCeratto/tsundoku";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
