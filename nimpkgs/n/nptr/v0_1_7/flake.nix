{
  description = ''Nim lang smart pointers'';
  inputs.src-nptr-v0_1_7.flake = false;
  inputs.src-nptr-v0_1_7.type = "github";
  inputs.src-nptr-v0_1_7.owner = "henryas";
  inputs.src-nptr-v0_1_7.repo = "nptr";
  inputs.src-nptr-v0_1_7.ref = "refs/tags/v0.1.7";
  
  outputs = { self, nixpkgs, src-nptr-v0_1_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nptr-v0_1_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nptr-v0_1_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}