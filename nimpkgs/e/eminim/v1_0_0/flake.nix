{
  description = ''JSON serialization framework'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-eminim-v1_0_0.flake = false;
  inputs.src-eminim-v1_0_0.type = "github";
  inputs.src-eminim-v1_0_0.owner = "planetis-m";
  inputs.src-eminim-v1_0_0.repo = "eminim";
  inputs.src-eminim-v1_0_0.ref = "refs/tags/v1.0.0";
  inputs.src-eminim-v1_0_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-eminim-v1_0_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eminim-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-eminim-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}