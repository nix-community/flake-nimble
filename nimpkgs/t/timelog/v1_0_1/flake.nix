{
  description = ''Simple nimble package to log monotic timings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-timelog-v1_0_1.flake = false;
  inputs.src-timelog-v1_0_1.type = "github";
  inputs.src-timelog-v1_0_1.owner = "Clonkk";
  inputs.src-timelog-v1_0_1.repo = "timelog";
  inputs.src-timelog-v1_0_1.ref = "refs/tags/v1.0.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-timelog-v1_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-timelog-v1_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-timelog-v1_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}