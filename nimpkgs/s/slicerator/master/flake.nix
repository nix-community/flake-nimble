{
  description = ''Iterator package aimed at more ergonomic and efficient iterators.'';
  inputs.src-slicerator-master.flake = false;
  inputs.src-slicerator-master.type = "github";
  inputs.src-slicerator-master.owner = "beef331";
  inputs.src-slicerator-master.repo = "slicerator";
  inputs.src-slicerator-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-slicerator-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-slicerator-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-slicerator-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}