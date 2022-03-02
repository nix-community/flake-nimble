{
  description = ''The Nim asynchronous web framework.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-akane-v0_1_0.flake = false;
  inputs.src-akane-v0_1_0.type = "github";
  inputs.src-akane-v0_1_0.owner = "ethosa";
  inputs.src-akane-v0_1_0.repo = "akane";
  inputs.src-akane-v0_1_0.ref = "refs/tags/v0.1.0";
  inputs.src-akane-v0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-akane-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-akane-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-akane-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}