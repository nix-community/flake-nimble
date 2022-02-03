{
  description = ''Fully type safe, compile time only units library'';
  inputs.src-unchained-v0_1_8.flake = false;
  inputs.src-unchained-v0_1_8.type = "github";
  inputs.src-unchained-v0_1_8.owner = "SciNim";
  inputs.src-unchained-v0_1_8.repo = "unchained";
  inputs.src-unchained-v0_1_8.ref = "refs/tags/v0.1.8";
  
  outputs = { self, nixpkgs, src-unchained-v0_1_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unchained-v0_1_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-unchained-v0_1_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}