{
  description = ''Package for packing and unpacking byte data'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-binio-master.flake = false;
  inputs.src-binio-master.type = "github";
  inputs.src-binio-master.owner = "Riderfighter";
  inputs.src-binio-master.repo = "binio";
  inputs.src-binio-master.ref = "refs/heads/master";
  inputs.src-binio-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."struct".type = "github";
  # inputs."struct".owner = "riinr";
  # inputs."struct".repo = "flake-nimble";
  # inputs."struct".ref = "flake-pinning";
  # inputs."struct".dir = "nimpkgs/s/struct";
  # inputs."struct".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."struct".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-binio-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-binio-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-binio-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}