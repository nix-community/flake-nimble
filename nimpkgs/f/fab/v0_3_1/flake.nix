{
  description = ''Print fabulously in your terminal'';
  inputs.src-fab-v0_3_1.flake = false;
  inputs.src-fab-v0_3_1.type = "github";
  inputs.src-fab-v0_3_1.owner = "icyphox";
  inputs.src-fab-v0_3_1.repo = "fab";
  inputs.src-fab-v0_3_1.ref = "refs/tags/v0.3.1";
  
  outputs = { self, nixpkgs, src-fab-v0_3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fab-v0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-fab-v0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}