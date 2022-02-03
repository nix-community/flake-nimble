{
  description = ''A simple cross language struct and enum file generator.'';
  inputs.src-wings-v0_0_1-alpha.flake = false;
  inputs.src-wings-v0_0_1-alpha.type = "github";
  inputs.src-wings-v0_0_1-alpha.owner = "binhonglee";
  inputs.src-wings-v0_0_1-alpha.repo = "wings";
  inputs.src-wings-v0_0_1-alpha.ref = "refs/tags/v0.0.1-alpha";
  
  outputs = { self, nixpkgs, src-wings-v0_0_1-alpha, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-wings-v0_0_1-alpha;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-wings-v0_0_1-alpha"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}