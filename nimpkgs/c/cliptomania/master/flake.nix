{
  description = ''.NET-inspired lightweight clipboard library'';
  inputs.src-cliptomania-master.flake = false;
  inputs.src-cliptomania-master.type = "github";
  inputs.src-cliptomania-master.owner = "Guevara-chan";
  inputs.src-cliptomania-master.repo = "Cliptomania";
  inputs.src-cliptomania-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-cliptomania-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cliptomania-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cliptomania-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}