{
  description = ''Common unicode operations'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-unicodeplus-v0_6_0.flake = false;
  inputs.src-unicodeplus-v0_6_0.type = "github";
  inputs.src-unicodeplus-v0_6_0.owner = "nitely";
  inputs.src-unicodeplus-v0_6_0.repo = "nim-unicodeplus";
  inputs.src-unicodeplus-v0_6_0.ref = "refs/tags/v0.6.0";
  inputs.src-unicodeplus-v0_6_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."unicodedb".type = "github";
  inputs."unicodedb".owner = "riinr";
  inputs."unicodedb".repo = "flake-nimble";
  inputs."unicodedb".ref = "flake-pinning";
  inputs."unicodedb".dir = "nimpkgs/u/unicodedb";
  inputs."unicodedb".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."segmentation".type = "github";
  inputs."segmentation".owner = "riinr";
  inputs."segmentation".repo = "flake-nimble";
  inputs."segmentation".ref = "flake-pinning";
  inputs."segmentation".dir = "nimpkgs/s/segmentation";
  inputs."segmentation".inputs.nixpkgs.follows = "nixpkgs";
  inputs."segmentation".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-unicodeplus-v0_6_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unicodeplus-v0_6_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-unicodeplus-v0_6_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}