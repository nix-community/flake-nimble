{
  description = ''Simple nimble package to log monotic timings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-timelog-v1_1_0.flake = false;
  inputs.src-timelog-v1_1_0.type = "github";
  inputs.src-timelog-v1_1_0.owner = "Clonkk";
  inputs.src-timelog-v1_1_0.repo = "timelog";
  inputs.src-timelog-v1_1_0.ref = "refs/tags/v1.1.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-timelog-v1_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-timelog-v1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-timelog-v1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}