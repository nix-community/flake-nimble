{
  description = ''Tiny object relational mapper (torm) for SQLite in Nim.'';
  inputs.src-torm-main.flake = false;
  inputs.src-torm-main.type = "github";
  inputs.src-torm-main.owner = "enimatek-nl";
  inputs.src-torm-main.repo = "torm";
  inputs.src-torm-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-torm-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-torm-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-torm-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}