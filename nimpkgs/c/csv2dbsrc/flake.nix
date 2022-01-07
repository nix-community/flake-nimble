{
  description = ''
    create db util sources from csv
  '';
  inputs.src-csv2dbsrc.url = "https://github.com/z-kk/csv2dbsrc";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
