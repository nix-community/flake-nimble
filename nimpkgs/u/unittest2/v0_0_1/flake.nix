{
  description = ''unittest fork focused on parallel test execution'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-unittest2-v0_0_1.flake = false;
  inputs.src-unittest2-v0_0_1.type = "github";
  inputs.src-unittest2-v0_0_1.owner = "status-im";
  inputs.src-unittest2-v0_0_1.repo = "nim-unittest2";
  inputs.src-unittest2-v0_0_1.ref = "refs/tags/v0.0.1";
  inputs.src-unittest2-v0_0_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-unittest2-v0_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unittest2-v0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-unittest2-v0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}