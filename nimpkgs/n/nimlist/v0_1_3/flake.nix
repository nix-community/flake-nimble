{
  description = ''View nim packages in your browser.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimlist-v0_1_3.flake = false;
  inputs.src-nimlist-v0_1_3.type = "github";
  inputs.src-nimlist-v0_1_3.owner = "flenniken";
  inputs.src-nimlist-v0_1_3.repo = "nimlist";
  inputs.src-nimlist-v0_1_3.ref = "refs/tags/v0.1.3";
  inputs.src-nimlist-v0_1_3.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimlist-v0_1_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimlist-v0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimlist-v0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}