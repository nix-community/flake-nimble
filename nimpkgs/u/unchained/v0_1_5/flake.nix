{
  description = ''Fully type safe, compile time only units library'';
  inputs.src-unchained-v0_1_5.flake = false;
  inputs.src-unchained-v0_1_5.type = "github";
  inputs.src-unchained-v0_1_5.owner = "SciNim";
  inputs.src-unchained-v0_1_5.repo = "unchained";
  inputs.src-unchained-v0_1_5.ref = "refs/tags/v0.1.5";
  
  outputs = { self, nixpkgs, src-unchained-v0_1_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unchained-v0_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-unchained-v0_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}