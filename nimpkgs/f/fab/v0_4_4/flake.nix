{
  description = ''Print fabulously in your terminal'';
  inputs.src-fab-v0_4_4.flake = false;
  inputs.src-fab-v0_4_4.type = "github";
  inputs.src-fab-v0_4_4.owner = "icyphox";
  inputs.src-fab-v0_4_4.repo = "fab";
  inputs.src-fab-v0_4_4.ref = "refs/tags/v0.4.4";
  
  outputs = { self, nixpkgs, src-fab-v0_4_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fab-v0_4_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-fab-v0_4_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}