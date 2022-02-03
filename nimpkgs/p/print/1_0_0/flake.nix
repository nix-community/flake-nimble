{
  description = ''Print is a set of pretty print macros, useful for print-debugging.'';
  inputs.src-print-1_0_0.flake = false;
  inputs.src-print-1_0_0.type = "github";
  inputs.src-print-1_0_0.owner = "treeform";
  inputs.src-print-1_0_0.repo = "print";
  inputs.src-print-1_0_0.ref = "refs/tags/1.0.0";
  
  outputs = { self, nixpkgs, src-print-1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-print-1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-print-1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}