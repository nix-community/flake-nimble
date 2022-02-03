{
  description = ''Accurate summation functions'';
  inputs.src-sums-main.flake = false;
  inputs.src-sums-main.type = "github";
  inputs.src-sums-main.owner = "planetis-m";
  inputs.src-sums-main.repo = "sums";
  inputs.src-sums-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-sums-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sums-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sums-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}