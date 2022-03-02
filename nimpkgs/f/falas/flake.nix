{
  description = ''fragment-aware assembler for short reads'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."falas-master".type = "github";
  inputs."falas-master".owner = "riinr";
  inputs."falas-master".repo = "flake-nimble";
  inputs."falas-master".ref = "flake-pinning";
  inputs."falas-master".dir = "nimpkgs/f/falas/master";
  inputs."falas-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."falas-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}