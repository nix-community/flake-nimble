{
  description = ''Bass wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimbass-v0_1_0.flake = false;
  inputs.src-nimbass-v0_1_0.type = "github";
  inputs.src-nimbass-v0_1_0.owner = "genotrance";
  inputs.src-nimbass-v0_1_0.repo = "nimbass";
  inputs.src-nimbass-v0_1_0.ref = "refs/tags/v0.1.0";
  inputs.src-nimbass-v0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."nimgen".type = "github";
  inputs."nimgen".owner = "riinr";
  inputs."nimgen".repo = "flake-nimble";
  inputs."nimgen".ref = "flake-pinning";
  inputs."nimgen".dir = "nimpkgs/n/nimgen";
  inputs."nimgen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimbass-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimbass-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimbass-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}