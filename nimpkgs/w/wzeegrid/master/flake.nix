{
  description = ''Grid plugin for wNim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-wZeeGrid-master.flake = false;
  inputs.src-wZeeGrid-master.type = "github";
  inputs.src-wZeeGrid-master.owner = "bunkford";
  inputs.src-wZeeGrid-master.repo = "wZeeGrid";
  inputs.src-wZeeGrid-master.ref = "refs/heads/master";
  
  
  inputs."wnim".type = "github";
  inputs."wnim".owner = "riinr";
  inputs."wnim".repo = "flake-nimble";
  inputs."wnim".ref = "flake-pinning";
  inputs."wnim".dir = "nimpkgs/w/wnim";

  outputs = { self, nixpkgs, flakeNimbleLib, src-wZeeGrid-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-wZeeGrid-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-wZeeGrid-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}