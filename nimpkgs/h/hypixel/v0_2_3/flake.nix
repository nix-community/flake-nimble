{
  description = ''The Hypixel API, in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-hypixel-v0_2_3.flake = false;
  inputs.src-hypixel-v0_2_3.type = "github";
  inputs.src-hypixel-v0_2_3.owner = "tonogram";
  inputs.src-hypixel-v0_2_3.repo = "hypixel-nim";
  inputs.src-hypixel-v0_2_3.ref = "refs/tags/v0.2.3";
  inputs.src-hypixel-v0_2_3.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-hypixel-v0_2_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hypixel-v0_2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hypixel-v0_2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}