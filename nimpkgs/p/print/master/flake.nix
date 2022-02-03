{
  description = ''Print is a set of pretty print macros, useful for print-debugging.'';
  inputs.src-print-master.flake = false;
  inputs.src-print-master.type = "github";
  inputs.src-print-master.owner = "treeform";
  inputs.src-print-master.repo = "print";
  inputs.src-print-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-print-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-print-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-print-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}