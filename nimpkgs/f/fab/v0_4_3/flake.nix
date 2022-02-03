{
  description = ''Print fabulously in your terminal'';
  inputs.src-fab-v0_4_3.flake = false;
  inputs.src-fab-v0_4_3.type = "github";
  inputs.src-fab-v0_4_3.owner = "icyphox";
  inputs.src-fab-v0_4_3.repo = "fab";
  inputs.src-fab-v0_4_3.ref = "refs/tags/v0.4.3";
  
  outputs = { self, nixpkgs, src-fab-v0_4_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fab-v0_4_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-fab-v0_4_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}