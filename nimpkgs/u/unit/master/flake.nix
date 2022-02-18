{
  description = ''A library that provides unit types in nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-unit-master.flake = false;
  inputs.src-unit-master.type = "github";
  inputs.src-unit-master.owner = "momeemt";
  inputs.src-unit-master.repo = "Unit";
  inputs.src-unit-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-unit-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unit-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-unit-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}