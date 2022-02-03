{
  description = ''Nim lang smart pointers'';
  inputs.src-nptr-v0_2_0.flake = false;
  inputs.src-nptr-v0_2_0.type = "github";
  inputs.src-nptr-v0_2_0.owner = "henryas";
  inputs.src-nptr-v0_2_0.repo = "nptr";
  inputs.src-nptr-v0_2_0.ref = "refs/tags/v0.2.0";
  
  outputs = { self, nixpkgs, src-nptr-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nptr-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nptr-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}