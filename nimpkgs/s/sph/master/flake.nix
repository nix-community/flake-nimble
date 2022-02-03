{
  description = ''Large number of cryptographic hashes for Nim'';
  inputs.src-sph-master.flake = false;
  inputs.src-sph-master.type = "github";
  inputs.src-sph-master.owner = "aidansteele";
  inputs.src-sph-master.repo = "sph";
  inputs.src-sph-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-sph-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sph-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sph-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}