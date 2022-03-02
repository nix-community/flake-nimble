{
  description = ''A dead simple, no-nonsense parser combinator library written in pure Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-honeycomb-master.flake = false;
  inputs.src-honeycomb-master.type = "github";
  inputs.src-honeycomb-master.owner = "KatrinaKitten";
  inputs.src-honeycomb-master.repo = "honeycomb";
  inputs.src-honeycomb-master.ref = "refs/heads/master";
  inputs.src-honeycomb-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-honeycomb-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-honeycomb-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-honeycomb-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}