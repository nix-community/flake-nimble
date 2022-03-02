{
  description = ''Libarchive at compile-time, Libarchive Chibi Edition'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."libarchibi-master".type = "github";
  inputs."libarchibi-master".owner = "riinr";
  inputs."libarchibi-master".repo = "flake-nimble";
  inputs."libarchibi-master".ref = "flake-pinning";
  inputs."libarchibi-master".dir = "nimpkgs/l/libarchibi/master";
  inputs."libarchibi-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libarchibi-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}