{
  description = ''zbar wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimzbar-v0_1_1.flake = false;
  inputs.src-nimzbar-v0_1_1.type = "github";
  inputs.src-nimzbar-v0_1_1.owner = "genotrance";
  inputs.src-nimzbar-v0_1_1.repo = "nimzbar";
  inputs.src-nimzbar-v0_1_1.ref = "refs/tags/v0.1.1";
  inputs.src-nimzbar-v0_1_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."nimgen".type = "github";
  inputs."nimgen".owner = "riinr";
  inputs."nimgen".repo = "flake-nimble";
  inputs."nimgen".ref = "flake-pinning";
  inputs."nimgen".dir = "nimpkgs/n/nimgen";
  inputs."nimgen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimzbar-v0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimzbar-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimzbar-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}