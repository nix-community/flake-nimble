{
  description = ''A command lined based text editor inspired by vi/vim'';
  inputs.src-moe-v0_0_2.flake = false;
  inputs.src-moe-v0_0_2.type = "github";
  inputs.src-moe-v0_0_2.owner = "fox0430";
  inputs.src-moe-v0_0_2.repo = "moe";
  inputs.src-moe-v0_0_2.ref = "refs/tags/v0.0.2";
  
  outputs = { self, nixpkgs, src-moe-v0_0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-moe-v0_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-moe-v0_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}