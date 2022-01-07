{
  description = ''
    A thin SQLite wrapper with proper type safety
  '';
  inputs.src-tiny_sqlite.url = "https://github.com/GULPF/tiny_sqlite";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
