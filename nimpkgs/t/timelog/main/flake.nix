{
  description = ''Simple nimble package to log monotic timings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-timelog-main.flake = false;
  inputs.src-timelog-main.type = "github";
  inputs.src-timelog-main.owner = "Clonkk";
  inputs.src-timelog-main.repo = "timelog";
  inputs.src-timelog-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-timelog-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-timelog-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-timelog-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}