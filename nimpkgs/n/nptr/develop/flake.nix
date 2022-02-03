{
  description = ''Nim lang smart pointers'';
  inputs.src-nptr-develop.flake = false;
  inputs.src-nptr-develop.type = "github";
  inputs.src-nptr-develop.owner = "henryas";
  inputs.src-nptr-develop.repo = "nptr";
  inputs.src-nptr-develop.ref = "refs/heads/develop";
  
  outputs = { self, nixpkgs, src-nptr-develop, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nptr-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nptr-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}