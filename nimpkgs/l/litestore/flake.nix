{
  description = ''
    A lightweight, self-contained, RESTful, searchable, multi-format NoSQL document store
  '';
  inputs.src-litestore.url = "https://github.com/h3rald/litestore";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
