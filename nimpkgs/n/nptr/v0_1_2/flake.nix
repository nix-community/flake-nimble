{
  description = ''Nim lang smart pointers'';
  inputs.src-nptr-v0_1_2.flake = false;
  inputs.src-nptr-v0_1_2.type = "github";
  inputs.src-nptr-v0_1_2.owner = "henryas";
  inputs.src-nptr-v0_1_2.repo = "nptr";
  inputs.src-nptr-v0_1_2.ref = "refs/tags/v0.1.2";
  
  outputs = { self, nixpkgs, src-nptr-v0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nptr-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nptr-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}