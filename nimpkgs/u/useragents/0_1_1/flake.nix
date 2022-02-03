{
  description = ''User Agent parser for nim.'';
  inputs.src-useragents-0_1_1.flake = false;
  inputs.src-useragents-0_1_1.type = "github";
  inputs.src-useragents-0_1_1.owner = "treeform";
  inputs.src-useragents-0_1_1.repo = "useragents";
  inputs.src-useragents-0_1_1.ref = "refs/tags/0.1.1";
  
  outputs = { self, nixpkgs, src-useragents-0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-useragents-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-useragents-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}