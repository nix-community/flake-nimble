{
  description = ''A crafty implementation of structured logging for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-chronicles-v0_4_1.flake = false;
  inputs.src-chronicles-v0_4_1.type = "github";
  inputs.src-chronicles-v0_4_1.owner = "status-im";
  inputs.src-chronicles-v0_4_1.repo = "nim-chronicles";
  inputs.src-chronicles-v0_4_1.ref = "refs/tags/v0.4.1";
  inputs.src-chronicles-v0_4_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-chronicles-v0_4_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-chronicles-v0_4_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-chronicles-v0_4_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}