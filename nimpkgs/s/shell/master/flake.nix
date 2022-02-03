{
  description = ''A Nim mini DSL to execute shell commands'';
  inputs.src-shell-master.flake = false;
  inputs.src-shell-master.type = "github";
  inputs.src-shell-master.owner = "Vindaar";
  inputs.src-shell-master.repo = "shell";
  inputs.src-shell-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-shell-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-shell-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-shell-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}