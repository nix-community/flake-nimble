{
  description = ''Chart plugin for wNim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-wchart-master.flake = false;
  inputs.src-wchart-master.type = "github";
  inputs.src-wchart-master.owner = "bunkford";
  inputs.src-wchart-master.repo = "wChart";
  inputs.src-wchart-master.ref = "refs/heads/master";
  
  
  inputs."wnim".type = "github";
  inputs."wnim".owner = "riinr";
  inputs."wnim".repo = "flake-nimble";
  inputs."wnim".ref = "flake-pinning";
  inputs."wnim".dir = "nimpkgs/w/wnim";

  outputs = { self, nixpkgs, flakeNimbleLib, src-wchart-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-wchart-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-wchart-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}