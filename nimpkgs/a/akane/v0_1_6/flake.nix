{
  description = ''The Nim asynchronous web framework.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-akane-v0_1_6.flake = false;
  inputs.src-akane-v0_1_6.type = "github";
  inputs.src-akane-v0_1_6.owner = "ethosa";
  inputs.src-akane-v0_1_6.repo = "akane";
  inputs.src-akane-v0_1_6.ref = "refs/tags/v0.1.6";
  inputs.src-akane-v0_1_6.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-akane-v0_1_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-akane-v0_1_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-akane-v0_1_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}