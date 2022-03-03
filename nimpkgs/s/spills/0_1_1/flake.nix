{
  description = ''Disk-based sequences'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-spills-0_1_1.flake = false;
  inputs.src-spills-0_1_1.type = "github";
  inputs.src-spills-0_1_1.owner = "andreaferretti";
  inputs.src-spills-0_1_1.repo = "spills";
  inputs.src-spills-0_1_1.ref = "refs/tags/0.1.1";
  inputs.src-spills-0_1_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-spills-0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-spills-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-spills-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}