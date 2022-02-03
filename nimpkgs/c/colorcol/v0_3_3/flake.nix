{
  description = ''Kakoune plugin for color preview'';
  inputs.src-colorcol-v0_3_3.flake = false;
  inputs.src-colorcol-v0_3_3.type = "github";
  inputs.src-colorcol-v0_3_3.owner = "SolitudeSF";
  inputs.src-colorcol-v0_3_3.repo = "colorcol";
  inputs.src-colorcol-v0_3_3.ref = "refs/tags/v0.3.3";
  
  outputs = { self, nixpkgs, src-colorcol-v0_3_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-colorcol-v0_3_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-colorcol-v0_3_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}