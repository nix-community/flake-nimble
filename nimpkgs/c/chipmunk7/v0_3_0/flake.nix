{
  description = ''Bindings for Chipmunk, a fast and lightweight 2D game physics library.'';
  inputs.src-chipmunk7-v0_3_0.flake = false;
  inputs.src-chipmunk7-v0_3_0.type = "github";
  inputs.src-chipmunk7-v0_3_0.owner = "avahe-kellenberger";
  inputs.src-chipmunk7-v0_3_0.repo = "nim-chipmunk";
  inputs.src-chipmunk7-v0_3_0.ref = "refs/tags/v0.3.0";
  
  outputs = { self, nixpkgs, src-chipmunk7-v0_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-chipmunk7-v0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-chipmunk7-v0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}