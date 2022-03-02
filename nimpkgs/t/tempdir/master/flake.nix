{
  description = ''A Nim library to create and manage temporary directories.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-tempdir-master.flake = false;
  inputs.src-tempdir-master.type = "github";
  inputs.src-tempdir-master.owner = "euantorano";
  inputs.src-tempdir-master.repo = "tempdir.nim";
  inputs.src-tempdir-master.ref = "refs/heads/master";
  inputs.src-tempdir-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-tempdir-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tempdir-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-tempdir-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}