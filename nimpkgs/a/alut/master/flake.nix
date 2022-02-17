{
  description = ''OpenAL Utility Toolkit (ALUT)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-alut-master.flake = false;
  inputs.src-alut-master.type = "github";
  inputs.src-alut-master.owner = "rmt";
  inputs.src-alut-master.repo = "alut";
  inputs.src-alut-master.ref = "refs/heads/master";
  
  
  inputs."openal".type = "github";
  inputs."openal".owner = "riinr";
  inputs."openal".repo = "flake-nimble";
  inputs."openal".ref = "flake-pinning";
  inputs."openal".dir = "nimpkgs/o/openal";

  outputs = { self, nixpkgs, flakeNimbleLib, src-alut-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-alut-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-alut-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}