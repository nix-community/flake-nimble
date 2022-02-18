{
  description = ''A Nim mini DSL to execute shell commands'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-shell-master.flake = false;
  inputs.src-shell-master.type = "github";
  inputs.src-shell-master.owner = "Vindaar";
  inputs.src-shell-master.repo = "shell";
  inputs.src-shell-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-shell-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-shell-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-shell-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}