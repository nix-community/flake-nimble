{
  description = ''Tiny object relational mapper (torm) for SQLite in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-torm-main.flake = false;
  inputs.src-torm-main.type = "github";
  inputs.src-torm-main.owner = "enimatek-nl";
  inputs.src-torm-main.repo = "torm";
  inputs.src-torm-main.ref = "refs/heads/main";
  inputs.src-torm-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-torm-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-torm-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-torm-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}