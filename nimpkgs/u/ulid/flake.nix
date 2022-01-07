{
  description = ''
    Universally Unique Lexicographically Sortable Identifier
  '';
  inputs.src-ulid.url = "https://github.com/adelq/ulid";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
