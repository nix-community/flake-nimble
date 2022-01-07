{
  description = ''
    Postgres Database ORM for Nim
  '';
  inputs.src-gatabase.url = "https://github.com/juancarlospaco/nim-gatabase";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
