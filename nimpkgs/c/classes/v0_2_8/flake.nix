{
  description = ''Adds class support to Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-classes-v0_2_8.flake = false;
  inputs.src-classes-v0_2_8.type = "github";
  inputs.src-classes-v0_2_8.owner = "jjv360";
  inputs.src-classes-v0_2_8.repo = "nim-classes";
  inputs.src-classes-v0_2_8.ref = "refs/tags/v0.2.8";
  inputs.src-classes-v0_2_8.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-classes-v0_2_8, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-classes-v0_2_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-classes-v0_2_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}