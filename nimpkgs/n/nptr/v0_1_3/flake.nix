{
  description = ''Nim lang smart pointers'';
  inputs.src-nptr-v0_1_3.flake = false;
  inputs.src-nptr-v0_1_3.type = "github";
  inputs.src-nptr-v0_1_3.owner = "henryas";
  inputs.src-nptr-v0_1_3.repo = "nptr";
  inputs.src-nptr-v0_1_3.ref = "refs/tags/v0.1.3";
  
  outputs = { self, nixpkgs, src-nptr-v0_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nptr-v0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nptr-v0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}