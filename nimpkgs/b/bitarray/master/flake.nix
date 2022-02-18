{
  description = ''mmap-backed bitarray implementation in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-bitarray-master.flake = false;
  inputs.src-bitarray-master.type = "github";
  inputs.src-bitarray-master.owner = "onecodex";
  inputs.src-bitarray-master.repo = "nim-bitarray";
  inputs.src-bitarray-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-bitarray-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bitarray-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bitarray-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}