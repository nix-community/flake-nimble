{
  description = ''X-Pixmap & NetPBM'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."xpm-master".type = "github";
  inputs."xpm-master".owner = "riinr";
  inputs."xpm-master".repo = "flake-nimble";
  inputs."xpm-master".ref = "flake-pinning";
  inputs."xpm-master".dir = "nimpkgs/x/xpm/master";
  inputs."xpm-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xpm-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}