{
  description = ''Unicode text segmentation tr29'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-segmentation-v0_0_1.flake = false;
  inputs.src-segmentation-v0_0_1.type = "github";
  inputs.src-segmentation-v0_0_1.owner = "nitely";
  inputs.src-segmentation-v0_0_1.repo = "nim-segmentation";
  inputs.src-segmentation-v0_0_1.ref = "refs/tags/v0.0.1";
  inputs.src-segmentation-v0_0_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."unicodedb".type = "github";
  # inputs."unicodedb".owner = "riinr";
  # inputs."unicodedb".repo = "flake-nimble";
  # inputs."unicodedb".ref = "flake-pinning";
  # inputs."unicodedb".dir = "nimpkgs/u/unicodedb";
  # inputs."unicodedb".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."unicodedb".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-segmentation-v0_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-segmentation-v0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-segmentation-v0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}