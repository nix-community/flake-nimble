{
  description = ''Fully type safe, compile time only units library'';
  inputs.src-unchained-v0_1_4.flake = false;
  inputs.src-unchained-v0_1_4.type = "github";
  inputs.src-unchained-v0_1_4.owner = "SciNim";
  inputs.src-unchained-v0_1_4.repo = "unchained";
  inputs.src-unchained-v0_1_4.ref = "refs/tags/v0.1.4";
  
  outputs = { self, nixpkgs, src-unchained-v0_1_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unchained-v0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-unchained-v0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}