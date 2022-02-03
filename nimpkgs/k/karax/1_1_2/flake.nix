{
  description = ''Karax is a framework for developing single page applications in Nim.'';
  inputs.src-karax-1_1_2.flake = false;
  inputs.src-karax-1_1_2.type = "github";
  inputs.src-karax-1_1_2.owner = "karaxnim";
  inputs.src-karax-1_1_2.repo = "karax";
  inputs.src-karax-1_1_2.ref = "refs/tags/1.1.2";
  
  outputs = { self, nixpkgs, src-karax-1_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-karax-1_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-karax-1_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}