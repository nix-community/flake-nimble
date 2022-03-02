{
  description = ''Bindings for the HDF5 data format C library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimhdf5-v0_3_12.flake = false;
  inputs.src-nimhdf5-v0_3_12.type = "github";
  inputs.src-nimhdf5-v0_3_12.owner = "Vindaar";
  inputs.src-nimhdf5-v0_3_12.repo = "nimhdf5";
  inputs.src-nimhdf5-v0_3_12.ref = "refs/tags/v0.3.12";
  inputs.src-nimhdf5-v0_3_12.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."https://github.com/vindaar/seqmath".type = "github";
  # inputs."https://github.com/vindaar/seqmath".owner = "riinr";
  # inputs."https://github.com/vindaar/seqmath".repo = "flake-nimble";
  # inputs."https://github.com/vindaar/seqmath".ref = "flake-pinning";
  # inputs."https://github.com/vindaar/seqmath".dir = "nimpkgs/h/https://github.com/vindaar/seqmath";
  # inputs."https://github.com/vindaar/seqmath".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/vindaar/seqmath".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimhdf5-v0_3_12, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimhdf5-v0_3_12;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimhdf5-v0_3_12"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}