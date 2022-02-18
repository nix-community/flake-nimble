{
  description = ''Mathematical formulas'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-formulas-master.flake = false;
  inputs.src-formulas-master.type = "other";
  inputs.src-formulas-master.owner = "thisago";
  inputs.src-formulas-master.repo = "formulas.nim";
  inputs.src-formulas-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-formulas-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-formulas-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-formulas-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}