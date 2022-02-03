{
  description = ''JSON serialization framework'';
  inputs.src-eminim-v2_0_3.flake = false;
  inputs.src-eminim-v2_0_3.type = "github";
  inputs.src-eminim-v2_0_3.owner = "planetis-m";
  inputs.src-eminim-v2_0_3.repo = "eminim";
  inputs.src-eminim-v2_0_3.ref = "refs/tags/v2.0.3";
  
  outputs = { self, nixpkgs, src-eminim-v2_0_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eminim-v2_0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-eminim-v2_0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}