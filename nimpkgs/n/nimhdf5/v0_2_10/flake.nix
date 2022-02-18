{
  description = ''Bindings for the HDF5 data format C library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimhdf5-v0_2_10.flake = false;
  inputs.src-nimhdf5-v0_2_10.type = "github";
  inputs.src-nimhdf5-v0_2_10.owner = "Vindaar";
  inputs.src-nimhdf5-v0_2_10.repo = "nimhdf5";
  inputs.src-nimhdf5-v0_2_10.ref = "refs/tags/v0.2.10";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimhdf5-v0_2_10, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimhdf5-v0_2_10;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimhdf5-v0_2_10"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}