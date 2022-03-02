{
  description = ''Sequoia PGP wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-sequoia-master.flake = false;
  inputs.src-sequoia-master.type = "github";
  inputs.src-sequoia-master.owner = "ba0f3";
  inputs.src-sequoia-master.repo = "sequoia.nim";
  inputs.src-sequoia-master.ref = "refs/heads/master";
  inputs.src-sequoia-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sequoia-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sequoia-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sequoia-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}