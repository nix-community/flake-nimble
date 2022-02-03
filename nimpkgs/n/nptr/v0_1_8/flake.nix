{
  description = ''Nim lang smart pointers'';
  inputs.src-nptr-v0_1_8.flake = false;
  inputs.src-nptr-v0_1_8.type = "github";
  inputs.src-nptr-v0_1_8.owner = "henryas";
  inputs.src-nptr-v0_1_8.repo = "nptr";
  inputs.src-nptr-v0_1_8.ref = "refs/tags/v0.1.8";
  
  outputs = { self, nixpkgs, src-nptr-v0_1_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nptr-v0_1_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nptr-v0_1_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}