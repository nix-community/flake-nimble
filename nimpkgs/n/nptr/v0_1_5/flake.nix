{
  description = ''Nim lang smart pointers'';
  inputs.src-nptr-v0_1_5.flake = false;
  inputs.src-nptr-v0_1_5.type = "github";
  inputs.src-nptr-v0_1_5.owner = "henryas";
  inputs.src-nptr-v0_1_5.repo = "nptr";
  inputs.src-nptr-v0_1_5.ref = "refs/tags/v0.1.5";
  
  outputs = { self, nixpkgs, src-nptr-v0_1_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nptr-v0_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nptr-v0_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}