{
  description = ''Morepretty - Does more than nimpretty.'';
  inputs.src-morepretty-0_1_0.flake = false;
  inputs.src-morepretty-0_1_0.type = "github";
  inputs.src-morepretty-0_1_0.owner = "treeform";
  inputs.src-morepretty-0_1_0.repo = "morepretty";
  inputs.src-morepretty-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-morepretty-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-morepretty-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-morepretty-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}