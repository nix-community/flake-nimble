{
  description = ''Nim wrapper for wxWidgets. Also contains high-level genui macro'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-wxnim-master.flake = false;
  inputs.src-wxnim-master.type = "github";
  inputs.src-wxnim-master.owner = "PMunch";
  inputs.src-wxnim-master.repo = "wxnim";
  inputs.src-wxnim-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-wxnim-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-wxnim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-wxnim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}