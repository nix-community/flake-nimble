{
  description = ''GFF <-> NWNT Converter (NeverWinter Nights Text)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nwnt-v1_2_2.flake = false;
  inputs.src-nwnt-v1_2_2.type = "github";
  inputs.src-nwnt-v1_2_2.owner = "WilliamDraco";
  inputs.src-nwnt-v1_2_2.repo = "NWNT";
  inputs.src-nwnt-v1_2_2.ref = "refs/tags/v1.2.2";
  inputs.src-nwnt-v1_2_2.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."neverwinter".type = "github";
  inputs."neverwinter".owner = "riinr";
  inputs."neverwinter".repo = "flake-nimble";
  inputs."neverwinter".ref = "flake-pinning";
  inputs."neverwinter".dir = "nimpkgs/n/neverwinter";
  inputs."neverwinter".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neverwinter".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."docopt".type = "github";
  inputs."docopt".owner = "riinr";
  inputs."docopt".repo = "flake-nimble";
  inputs."docopt".ref = "flake-pinning";
  inputs."docopt".dir = "nimpkgs/d/docopt";
  inputs."docopt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docopt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nwnt-v1_2_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nwnt-v1_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nwnt-v1_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}