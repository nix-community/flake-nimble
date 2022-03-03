{
  description = ''A nim flavor of pytorch'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-torch-v0_1_15.flake = false;
  inputs.src-torch-v0_1_15.type = "github";
  inputs.src-torch-v0_1_15.owner = "fragcolor-xyz";
  inputs.src-torch-v0_1_15.repo = "nimtorch";
  inputs.src-torch-v0_1_15.ref = "refs/tags/v0.1.15";
  inputs.src-torch-v0_1_15.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."fragments".type = "github";
  # inputs."fragments".owner = "riinr";
  # inputs."fragments".repo = "flake-nimble";
  # inputs."fragments".ref = "flake-pinning";
  # inputs."fragments".dir = "nimpkgs/f/fragments";
  # inputs."fragments".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."fragments".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-torch-v0_1_15, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-torch-v0_1_15;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-torch-v0_1_15"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}