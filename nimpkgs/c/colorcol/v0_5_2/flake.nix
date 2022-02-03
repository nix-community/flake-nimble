{
  description = ''Kakoune plugin for color preview'';
  inputs.src-colorcol-v0_5_2.flake = false;
  inputs.src-colorcol-v0_5_2.type = "github";
  inputs.src-colorcol-v0_5_2.owner = "SolitudeSF";
  inputs.src-colorcol-v0_5_2.repo = "colorcol";
  inputs.src-colorcol-v0_5_2.ref = "refs/tags/v0.5.2";
  
  outputs = { self, nixpkgs, src-colorcol-v0_5_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-colorcol-v0_5_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-colorcol-v0_5_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}