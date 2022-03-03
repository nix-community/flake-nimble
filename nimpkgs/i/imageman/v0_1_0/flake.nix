{
  description = ''Image manipulation library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-imageman-v0_1_0.flake = false;
  inputs.src-imageman-v0_1_0.type = "github";
  inputs.src-imageman-v0_1_0.owner = "SolitudeSF";
  inputs.src-imageman-v0_1_0.repo = "imageman";
  inputs.src-imageman-v0_1_0.ref = "refs/tags/v0.1.0";
  inputs.src-imageman-v0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nimpng".type = "github";
  # inputs."nimpng".owner = "riinr";
  # inputs."nimpng".repo = "flake-nimble";
  # inputs."nimpng".ref = "flake-pinning";
  # inputs."nimpng".dir = "nimpkgs/n/nimpng";
  # inputs."nimpng".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimpng".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-imageman-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-imageman-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-imageman-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}