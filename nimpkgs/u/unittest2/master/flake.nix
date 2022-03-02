{
  description = ''unittest fork focused on parallel test execution'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-unittest2-master.flake = false;
  inputs.src-unittest2-master.type = "github";
  inputs.src-unittest2-master.owner = "status-im";
  inputs.src-unittest2-master.repo = "nim-unittest2";
  inputs.src-unittest2-master.ref = "refs/heads/master";
  inputs.src-unittest2-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-unittest2-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unittest2-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-unittest2-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}