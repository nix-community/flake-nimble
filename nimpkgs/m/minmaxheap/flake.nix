{
  description = ''MinMaxHeap'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."minmaxheap-master".type = "github";
  inputs."minmaxheap-master".owner = "riinr";
  inputs."minmaxheap-master".repo = "flake-nimble";
  inputs."minmaxheap-master".ref = "flake-pinning";
  inputs."minmaxheap-master".dir = "nimpkgs/m/minmaxheap/master";
  inputs."minmaxheap-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."minmaxheap-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}