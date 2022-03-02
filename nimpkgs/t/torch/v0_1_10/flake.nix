{
  description = ''A nim flavor of pytorch'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-torch-v0_1_10.flake = false;
  inputs.src-torch-v0_1_10.type = "github";
  inputs.src-torch-v0_1_10.owner = "fragcolor-xyz";
  inputs.src-torch-v0_1_10.repo = "nimtorch";
  inputs.src-torch-v0_1_10.ref = "refs/tags/v0.1.10";
  inputs.src-torch-v0_1_10.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."fragments".type = "github";
  # inputs."fragments".owner = "riinr";
  # inputs."fragments".repo = "flake-nimble";
  # inputs."fragments".ref = "flake-pinning";
  # inputs."fragments".dir = "nimpkgs/f/fragments";
  # inputs."fragments".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."fragments".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-torch-v0_1_10, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-torch-v0_1_10;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-torch-v0_1_10"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}