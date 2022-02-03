{
  description = ''Matrix library'';
  inputs.src-manu-v2_0_4.flake = false;
  inputs.src-manu-v2_0_4.type = "github";
  inputs.src-manu-v2_0_4.owner = "planetis-m";
  inputs.src-manu-v2_0_4.repo = "manu";
  inputs.src-manu-v2_0_4.ref = "refs/tags/v2.0.4";
  
  outputs = { self, nixpkgs, src-manu-v2_0_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-manu-v2_0_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-manu-v2_0_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}