{
  description = ''Rain simulation in your terminal'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-rain-master.flake = false;
  inputs.src-rain-master.type = "github";
  inputs.src-rain-master.owner = "OHermesJunior";
  inputs.src-rain-master.repo = "rain.nim";
  inputs.src-rain-master.ref = "refs/heads/master";
  inputs.src-rain-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-rain-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rain-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-rain-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}