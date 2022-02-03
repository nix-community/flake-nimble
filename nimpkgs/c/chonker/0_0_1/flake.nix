{
  description = ''Arch Linux Pacman Optimizer'';
  inputs.src-chonker-0_0_1.flake = false;
  inputs.src-chonker-0_0_1.type = "github";
  inputs.src-chonker-0_0_1.owner = "juancarlospaco";
  inputs.src-chonker-0_0_1.repo = "nim-chonker";
  inputs.src-chonker-0_0_1.ref = "refs/tags/0.0.1";
  
  outputs = { self, nixpkgs, src-chonker-0_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-chonker-0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-chonker-0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}