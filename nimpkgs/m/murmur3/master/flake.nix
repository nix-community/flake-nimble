{
  description = ''A simple MurmurHash3 wrapper for Nim'';
  inputs.src-murmur3-master.flake = false;
  inputs.src-murmur3-master.type = "github";
  inputs.src-murmur3-master.owner = "boydgreenfield";
  inputs.src-murmur3-master.repo = "nimrod-murmur";
  inputs.src-murmur3-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-murmur3-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-murmur3-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-murmur3-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}