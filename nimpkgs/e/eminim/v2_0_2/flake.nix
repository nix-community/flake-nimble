{
  description = ''JSON serialization framework'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-eminim-v2_0_2.flake = false;
  inputs.src-eminim-v2_0_2.type = "github";
  inputs.src-eminim-v2_0_2.owner = "planetis-m";
  inputs.src-eminim-v2_0_2.repo = "eminim";
  inputs.src-eminim-v2_0_2.ref = "refs/tags/v2.0.2";
  inputs.src-eminim-v2_0_2.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-eminim-v2_0_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eminim-v2_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-eminim-v2_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}