{
  description = ''mmap-backed bitarray implementation in Nim.'';
  inputs.src-bitarray-master.flake = false;
  inputs.src-bitarray-master.type = "github";
  inputs.src-bitarray-master.owner = "onecodex";
  inputs.src-bitarray-master.repo = "nim-bitarray";
  inputs.src-bitarray-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-bitarray-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bitarray-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bitarray-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}