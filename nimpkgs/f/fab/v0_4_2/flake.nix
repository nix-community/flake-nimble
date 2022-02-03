{
  description = ''Print fabulously in your terminal'';
  inputs.src-fab-v0_4_2.flake = false;
  inputs.src-fab-v0_4_2.type = "github";
  inputs.src-fab-v0_4_2.owner = "icyphox";
  inputs.src-fab-v0_4_2.repo = "fab";
  inputs.src-fab-v0_4_2.ref = "refs/tags/v0.4.2";
  
  outputs = { self, nixpkgs, src-fab-v0_4_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fab-v0_4_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-fab-v0_4_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}