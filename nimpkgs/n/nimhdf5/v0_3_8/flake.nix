{
  description = ''Bindings for the HDF5 data format C library'';
  inputs.src-nimhdf5-v0_3_8.flake = false;
  inputs.src-nimhdf5-v0_3_8.type = "github";
  inputs.src-nimhdf5-v0_3_8.owner = "Vindaar";
  inputs.src-nimhdf5-v0_3_8.repo = "nimhdf5";
  inputs.src-nimhdf5-v0_3_8.ref = "refs/tags/v0.3.8";
  
  
  inputs."https://github.com/vindaar/seqmath".type = "github";
  inputs."https://github.com/vindaar/seqmath".owner = "riinr";
  inputs."https://github.com/vindaar/seqmath".repo = "flake-nimble";
  inputs."https://github.com/vindaar/seqmath".ref = "flake-pinning";
  inputs."https://github.com/vindaar/seqmath".dir = "nimpkgs/h/https://github.com/vindaar/seqmath";

  outputs = { self, nixpkgs, src-nimhdf5-v0_3_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimhdf5-v0_3_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimhdf5-v0_3_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}