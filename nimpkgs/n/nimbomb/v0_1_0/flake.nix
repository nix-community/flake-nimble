{
  description = ''A GiantBomb-wiki wrapper for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimbomb-v0_1_0.flake = false;
  inputs.src-nimbomb-v0_1_0.type = "github";
  inputs.src-nimbomb-v0_1_0.owner = "Tyler-Yocolano";
  inputs.src-nimbomb-v0_1_0.repo = "nimbomb";
  inputs.src-nimbomb-v0_1_0.ref = "refs/tags/v0.1.0";
  inputs.src-nimbomb-v0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimbomb-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimbomb-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimbomb-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}