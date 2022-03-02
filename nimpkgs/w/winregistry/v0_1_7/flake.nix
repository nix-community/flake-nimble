{
  description = ''Deal with Windows Registry from Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-winregistry-v0_1_7.flake = false;
  inputs.src-winregistry-v0_1_7.type = "github";
  inputs.src-winregistry-v0_1_7.owner = "miere43";
  inputs.src-winregistry-v0_1_7.repo = "nim-registry";
  inputs.src-winregistry-v0_1_7.ref = "refs/tags/v0.1.7";
  inputs.src-winregistry-v0_1_7.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-winregistry-v0_1_7, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-winregistry-v0_1_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-winregistry-v0_1_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}