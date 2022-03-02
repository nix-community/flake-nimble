{
  description = ''A helper module for writing unit tests in Nim with nake or similar build system.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-findtests-master.flake = false;
  inputs.src-findtests-master.type = "github";
  inputs.src-findtests-master.owner = "jackvandrunen";
  inputs.src-findtests-master.repo = "findtests";
  inputs.src-findtests-master.ref = "refs/heads/master";
  inputs.src-findtests-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-findtests-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-findtests-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-findtests-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}