{
  description = ''Key/Value storage into a fast file-hash'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-niledb-master.flake = false;
  inputs.src-niledb-master.type = "github";
  inputs.src-niledb-master.owner = "JeffersonLab";
  inputs.src-niledb-master.repo = "niledb";
  inputs.src-niledb-master.ref = "refs/heads/master";
  inputs.src-niledb-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."serializetools".type = "github";
  # inputs."serializetools".owner = "riinr";
  # inputs."serializetools".repo = "flake-nimble";
  # inputs."serializetools".ref = "flake-pinning";
  # inputs."serializetools".dir = "nimpkgs/s/serializetools";
  # inputs."serializetools".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."serializetools".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-niledb-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-niledb-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-niledb-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}