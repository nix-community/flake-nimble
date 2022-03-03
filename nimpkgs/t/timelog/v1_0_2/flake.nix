{
  description = ''Simple nimble package to log monotic timings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-timelog-v1_0_2.flake = false;
  inputs.src-timelog-v1_0_2.type = "github";
  inputs.src-timelog-v1_0_2.owner = "Clonkk";
  inputs.src-timelog-v1_0_2.repo = "timelog";
  inputs.src-timelog-v1_0_2.ref = "refs/tags/v1.0.2";
  inputs.src-timelog-v1_0_2.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-timelog-v1_0_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-timelog-v1_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-timelog-v1_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}