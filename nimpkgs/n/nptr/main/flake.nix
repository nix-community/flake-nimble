{
  description = ''Nim lang smart pointers'';
  inputs.src-nptr-main.flake = false;
  inputs.src-nptr-main.type = "github";
  inputs.src-nptr-main.owner = "henryas";
  inputs.src-nptr-main.repo = "nptr";
  inputs.src-nptr-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-nptr-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nptr-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nptr-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}