{
  description = ''Wrapper for the C[++] library BearLibTerminal'';
  inputs.src-bearlibterminal-master.flake = false;
  inputs.src-bearlibterminal-master.type = "github";
  inputs.src-bearlibterminal-master.owner = "irskep";
  inputs.src-bearlibterminal-master.repo = "BearLibTerminal-Nim";
  inputs.src-bearlibterminal-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-bearlibterminal-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bearlibterminal-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bearlibterminal-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}