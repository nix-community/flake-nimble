{
  description = ''A command lined based text editor inspired by vi/vim'';
  inputs.src-moe-v0_0_1.flake = false;
  inputs.src-moe-v0_0_1.type = "github";
  inputs.src-moe-v0_0_1.owner = "fox0430";
  inputs.src-moe-v0_0_1.repo = "moe";
  inputs.src-moe-v0_0_1.ref = "refs/tags/v0.0.1";
  
  outputs = { self, nixpkgs, src-moe-v0_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-moe-v0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-moe-v0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}