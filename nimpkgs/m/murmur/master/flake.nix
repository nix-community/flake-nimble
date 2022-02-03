{
  description = ''MurmurHash in pure Nim.'';
  inputs.src-murmur-master.flake = false;
  inputs.src-murmur-master.type = "github";
  inputs.src-murmur-master.owner = "olahol";
  inputs.src-murmur-master.repo = "nimrod-murmur";
  inputs.src-murmur-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-murmur-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-murmur-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-murmur-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}