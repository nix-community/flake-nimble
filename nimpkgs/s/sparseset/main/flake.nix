{
  description = ''Sparsets for Nim'';
  inputs.src-sparseset-main.flake = false;
  inputs.src-sparseset-main.type = "github";
  inputs.src-sparseset-main.owner = "planetis-m";
  inputs.src-sparseset-main.repo = "sparseset";
  inputs.src-sparseset-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-sparseset-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sparseset-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sparseset-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}