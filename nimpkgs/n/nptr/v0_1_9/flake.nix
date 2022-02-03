{
  description = ''Nim lang smart pointers'';
  inputs.src-nptr-v0_1_9.flake = false;
  inputs.src-nptr-v0_1_9.type = "github";
  inputs.src-nptr-v0_1_9.owner = "henryas";
  inputs.src-nptr-v0_1_9.repo = "nptr";
  inputs.src-nptr-v0_1_9.ref = "refs/tags/v0.1.9";
  
  outputs = { self, nixpkgs, src-nptr-v0_1_9, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nptr-v0_1_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nptr-v0_1_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}