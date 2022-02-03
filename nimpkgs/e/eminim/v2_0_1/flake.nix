{
  description = ''JSON serialization framework'';
  inputs.src-eminim-v2_0_1.flake = false;
  inputs.src-eminim-v2_0_1.type = "github";
  inputs.src-eminim-v2_0_1.owner = "planetis-m";
  inputs.src-eminim-v2_0_1.repo = "eminim";
  inputs.src-eminim-v2_0_1.ref = "refs/tags/v2.0.1";
  
  outputs = { self, nixpkgs, src-eminim-v2_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eminim-v2_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-eminim-v2_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}