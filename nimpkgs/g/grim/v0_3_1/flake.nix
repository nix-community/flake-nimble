{
  description = ''Graphs in nim!'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-grim-v0_3_1.flake = false;
  inputs.src-grim-v0_3_1.type = "github";
  inputs.src-grim-v0_3_1.owner = "ebran";
  inputs.src-grim-v0_3_1.repo = "grim";
  inputs.src-grim-v0_3_1.ref = "refs/tags/v0.3.1";
  inputs.src-grim-v0_3_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."yaml".type = "github";
  # inputs."yaml".owner = "riinr";
  # inputs."yaml".repo = "flake-nimble";
  # inputs."yaml".ref = "flake-pinning";
  # inputs."yaml".dir = "nimpkgs/y/yaml";
  # inputs."yaml".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."yaml".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."zero_functional".type = "github";
  # inputs."zero_functional".owner = "riinr";
  # inputs."zero_functional".repo = "flake-nimble";
  # inputs."zero_functional".ref = "flake-pinning";
  # inputs."zero_functional".dir = "nimpkgs/z/zero_functional";
  # inputs."zero_functional".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."zero_functional".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-grim-v0_3_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-grim-v0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-grim-v0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}