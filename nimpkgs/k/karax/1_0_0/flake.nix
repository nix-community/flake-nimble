{
  description = ''Karax is a framework for developing single page applications in Nim.'';
  inputs.src-karax-1_0_0.flake = false;
  inputs.src-karax-1_0_0.type = "github";
  inputs.src-karax-1_0_0.owner = "karaxnim";
  inputs.src-karax-1_0_0.repo = "karax";
  inputs.src-karax-1_0_0.ref = "refs/tags/1.0.0";
  
  outputs = { self, nixpkgs, src-karax-1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-karax-1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-karax-1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}