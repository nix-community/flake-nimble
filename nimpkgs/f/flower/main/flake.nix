{
  description = ''A pure Nim bloom filter.'';
  inputs.src-flower-main.flake = false;
  inputs.src-flower-main.type = "github";
  inputs.src-flower-main.owner = "dizzyliam";
  inputs.src-flower-main.repo = "flower";
  inputs.src-flower-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-flower-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-flower-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-flower-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}