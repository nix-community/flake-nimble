{
  description = ''256 colors for shell'';
  inputs.src-rainbow-v0_2_3.flake = false;
  inputs.src-rainbow-v0_2_3.type = "github";
  inputs.src-rainbow-v0_2_3.owner = "Willyboar";
  inputs.src-rainbow-v0_2_3.repo = "rainbow";
  inputs.src-rainbow-v0_2_3.ref = "refs/tags/v0.2.3";
  
  outputs = { self, nixpkgs, src-rainbow-v0_2_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rainbow-v0_2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rainbow-v0_2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}