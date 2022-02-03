{
  description = ''Bindings for the HDF5 data format C library'';
  inputs.src-nimhdf5-master.flake = false;
  inputs.src-nimhdf5-master.type = "github";
  inputs.src-nimhdf5-master.owner = "Vindaar";
  inputs.src-nimhdf5-master.repo = "nimhdf5";
  inputs.src-nimhdf5-master.ref = "refs/heads/master";
  
  
  inputs."https://github.com/vindaar/seqmath".url = "path:../../../h/https://github.com/vindaar/seqmath";
  inputs."https://github.com/vindaar/seqmath".type = "github";
  inputs."https://github.com/vindaar/seqmath".owner = "riinr";
  inputs."https://github.com/vindaar/seqmath".repo = "flake-nimble";
  inputs."https://github.com/vindaar/seqmath".ref = "flake-pinning";
  inputs."https://github.com/vindaar/seqmath".dir = "nimpkgs/h/https://github.com/vindaar/seqmath";

  outputs = { self, nixpkgs, src-nimhdf5-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimhdf5-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimhdf5-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}