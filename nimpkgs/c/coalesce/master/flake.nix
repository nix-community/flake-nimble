{
  description = ''A nil coalescing operator ?? for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-coalesce-master.flake = false;
  inputs.src-coalesce-master.type = "github";
  inputs.src-coalesce-master.owner = "piedar";
  inputs.src-coalesce-master.repo = "coalesce";
  inputs.src-coalesce-master.ref = "refs/heads/master";
  inputs.src-coalesce-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-coalesce-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-coalesce-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-coalesce-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}