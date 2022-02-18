{
  description = ''Extensible bit vector integer encoding library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-bitvec-master.flake = false;
  inputs.src-bitvec-master.type = "github";
  inputs.src-bitvec-master.owner = "keyme";
  inputs.src-bitvec-master.repo = "nim_bitvec";
  inputs.src-bitvec-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-bitvec-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bitvec-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bitvec-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}