{
  description = ''Wrapper for the C[++] library BearLibTerminal'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-bearlibterminal-master.flake = false;
  inputs.src-bearlibterminal-master.type = "github";
  inputs.src-bearlibterminal-master.owner = "irskep";
  inputs.src-bearlibterminal-master.repo = "BearLibTerminal-Nim";
  inputs.src-bearlibterminal-master.ref = "refs/heads/master";
  inputs.src-bearlibterminal-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-bearlibterminal-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bearlibterminal-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bearlibterminal-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}