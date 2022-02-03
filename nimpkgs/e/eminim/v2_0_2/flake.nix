{
  description = ''JSON serialization framework'';
  inputs.src-eminim-v2_0_2.flake = false;
  inputs.src-eminim-v2_0_2.type = "github";
  inputs.src-eminim-v2_0_2.owner = "planetis-m";
  inputs.src-eminim-v2_0_2.repo = "eminim";
  inputs.src-eminim-v2_0_2.ref = "refs/tags/v2.0.2";
  
  outputs = { self, nixpkgs, src-eminim-v2_0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eminim-v2_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-eminim-v2_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}