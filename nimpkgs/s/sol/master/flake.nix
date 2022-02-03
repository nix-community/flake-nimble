{
  description = ''A SIMD-accelerated vector library written in C99 with Nim bindings.'';
  inputs.src-sol-master.flake = false;
  inputs.src-sol-master.type = "github";
  inputs.src-sol-master.owner = "davidgarland";
  inputs.src-sol-master.repo = "sol";
  inputs.src-sol-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-sol-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sol-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sol-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}