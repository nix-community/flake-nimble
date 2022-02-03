{
  description = ''ISAAC PRNG implementation on Nim'';
  inputs.src-isaac-master.flake = false;
  inputs.src-isaac-master.type = "github";
  inputs.src-isaac-master.owner = "pragmagic";
  inputs.src-isaac-master.repo = "isaac";
  inputs.src-isaac-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-isaac-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-isaac-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-isaac-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}