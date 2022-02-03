{
  description = ''Fully type safe, compile time only units library'';
  inputs.src-unchained-v0_1_3.flake = false;
  inputs.src-unchained-v0_1_3.type = "github";
  inputs.src-unchained-v0_1_3.owner = "SciNim";
  inputs.src-unchained-v0_1_3.repo = "unchained";
  inputs.src-unchained-v0_1_3.ref = "refs/tags/v0.1.3";
  
  outputs = { self, nixpkgs, src-unchained-v0_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unchained-v0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-unchained-v0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}