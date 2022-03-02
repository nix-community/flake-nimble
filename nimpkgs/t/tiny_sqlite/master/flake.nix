{
  description = ''A thin SQLite wrapper with proper type safety'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-tiny_sqlite-master.flake = false;
  inputs.src-tiny_sqlite-master.type = "github";
  inputs.src-tiny_sqlite-master.owner = "GULPF";
  inputs.src-tiny_sqlite-master.repo = "tiny_sqlite";
  inputs.src-tiny_sqlite-master.ref = "refs/heads/master";
  inputs.src-tiny_sqlite-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-tiny_sqlite-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tiny_sqlite-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-tiny_sqlite-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}