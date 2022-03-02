{
  description = ''Zero-cost abstractions for microcontrollers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-ratel-master.flake = false;
  inputs.src-ratel-master.type = "github";
  inputs.src-ratel-master.owner = "PMunch";
  inputs.src-ratel-master.repo = "ratel";
  inputs.src-ratel-master.ref = "refs/heads/master";
  inputs.src-ratel-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ratel-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ratel-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ratel-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}