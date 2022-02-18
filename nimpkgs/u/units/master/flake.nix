{
  description = '' Statically-typed quantity units.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-units-master.flake = false;
  inputs.src-units-master.type = "github";
  inputs.src-units-master.owner = "Udiknedormin";
  inputs.src-units-master.repo = "NimUnits";
  inputs.src-units-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-units-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-units-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-units-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}