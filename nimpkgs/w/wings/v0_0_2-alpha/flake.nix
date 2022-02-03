{
  description = ''A simple cross language struct and enum file generator.'';
  inputs.src-wings-v0_0_2-alpha.flake = false;
  inputs.src-wings-v0_0_2-alpha.type = "github";
  inputs.src-wings-v0_0_2-alpha.owner = "binhonglee";
  inputs.src-wings-v0_0_2-alpha.repo = "wings";
  inputs.src-wings-v0_0_2-alpha.ref = "refs/tags/v0.0.2-alpha";
  
  outputs = { self, nixpkgs, src-wings-v0_0_2-alpha, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-wings-v0_0_2-alpha;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-wings-v0_0_2-alpha"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}