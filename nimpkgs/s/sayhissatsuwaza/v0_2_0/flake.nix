{
  description = ''Say hissatsuwaza (special attack) on your terminal.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-sayhissatsuwaza-v0_2_0.flake = false;
  inputs.src-sayhissatsuwaza-v0_2_0.type = "github";
  inputs.src-sayhissatsuwaza-v0_2_0.owner = "jiro4989";
  inputs.src-sayhissatsuwaza-v0_2_0.repo = "sayhissatsuwaza";
  inputs.src-sayhissatsuwaza-v0_2_0.ref = "refs/tags/v0.2.0";
  inputs.src-sayhissatsuwaza-v0_2_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sayhissatsuwaza-v0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sayhissatsuwaza-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sayhissatsuwaza-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}