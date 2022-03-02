{
  description = ''Wrapper of the AVbin library for the Nim language.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-avbin-master.flake = false;
  inputs.src-avbin-master.type = "github";
  inputs.src-avbin-master.owner = "Vladar4";
  inputs.src-avbin-master.repo = "avbin";
  inputs.src-avbin-master.ref = "refs/heads/master";
  inputs.src-avbin-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-avbin-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-avbin-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-avbin-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}