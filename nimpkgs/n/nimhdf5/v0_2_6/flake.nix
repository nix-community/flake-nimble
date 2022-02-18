{
  description = ''Bindings for the HDF5 data format C library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimhdf5-v0_2_6.flake = false;
  inputs.src-nimhdf5-v0_2_6.type = "github";
  inputs.src-nimhdf5-v0_2_6.owner = "Vindaar";
  inputs.src-nimhdf5-v0_2_6.repo = "nimhdf5";
  inputs.src-nimhdf5-v0_2_6.ref = "refs/tags/v0.2.6";
  
  
  inputs."arraymancer".type = "github";
  inputs."arraymancer".owner = "riinr";
  inputs."arraymancer".repo = "flake-nimble";
  inputs."arraymancer".ref = "flake-pinning";
  inputs."arraymancer".dir = "nimpkgs/a/arraymancer";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimhdf5-v0_2_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimhdf5-v0_2_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimhdf5-v0_2_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}