{
  description = ''A nim flavor of pytorch'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-torch-v0_2_0.flake = false;
  inputs.src-torch-v0_2_0.type = "github";
  inputs.src-torch-v0_2_0.owner = "fragcolor-xyz";
  inputs.src-torch-v0_2_0.repo = "nimtorch";
  inputs.src-torch-v0_2_0.ref = "refs/tags/v0.2.0";
  inputs.src-torch-v0_2_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."fragments".type = "github";
  inputs."fragments".owner = "riinr";
  inputs."fragments".repo = "flake-nimble";
  inputs."fragments".ref = "flake-pinning";
  inputs."fragments".dir = "nimpkgs/f/fragments";
  inputs."fragments".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fragments".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-torch-v0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-torch-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-torch-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}