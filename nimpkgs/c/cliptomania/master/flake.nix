{
  description = ''.NET-inspired lightweight clipboard library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-cliptomania-master.flake = false;
  inputs.src-cliptomania-master.type = "github";
  inputs.src-cliptomania-master.owner = "guevara-chan";
  inputs.src-cliptomania-master.repo = "Cliptomania";
  inputs.src-cliptomania-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-cliptomania-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cliptomania-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cliptomania-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}