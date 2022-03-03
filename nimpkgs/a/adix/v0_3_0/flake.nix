{
  description = ''An Adaptive Index Library For Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-adix-v0_3_0.flake = false;
  inputs.src-adix-v0_3_0.type = "github";
  inputs.src-adix-v0_3_0.owner = "c-blake";
  inputs.src-adix-v0_3_0.repo = "adix";
  inputs.src-adix-v0_3_0.ref = "refs/tags/v0.3.0";
  inputs.src-adix-v0_3_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-adix-v0_3_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-adix-v0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-adix-v0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}