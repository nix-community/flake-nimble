{
  description = ''Unicode text segmentation tr29'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-segmentation-master.flake = false;
  inputs.src-segmentation-master.type = "github";
  inputs.src-segmentation-master.owner = "nitely";
  inputs.src-segmentation-master.repo = "nim-segmentation";
  inputs.src-segmentation-master.ref = "refs/heads/master";
  inputs.src-segmentation-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."unicodedb".type = "github";
  inputs."unicodedb".owner = "riinr";
  inputs."unicodedb".repo = "flake-nimble";
  inputs."unicodedb".ref = "flake-pinning";
  inputs."unicodedb".dir = "nimpkgs/u/unicodedb";
  inputs."unicodedb".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-segmentation-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-segmentation-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-segmentation-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}