{
  description = ''xxhash wrapper for Nim'';
  inputs.src-xxhash-master.flake = false;
  inputs.src-xxhash-master.type = "github";
  inputs.src-xxhash-master.owner = "OpenSystemsLab";
  inputs.src-xxhash-master.repo = "xxhash.nim";
  inputs.src-xxhash-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-xxhash-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xxhash-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-xxhash-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}