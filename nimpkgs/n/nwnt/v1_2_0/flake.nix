{
  description = ''GFF <-> NWNT Converter (NeverWinter Nights Text)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nwnt-v1_2_0.flake = false;
  inputs.src-nwnt-v1_2_0.type = "github";
  inputs.src-nwnt-v1_2_0.owner = "WilliamDraco";
  inputs.src-nwnt-v1_2_0.repo = "NWNT";
  inputs.src-nwnt-v1_2_0.ref = "refs/tags/v1.2.0";
  
  
  inputs."neverwinter".type = "github";
  inputs."neverwinter".owner = "riinr";
  inputs."neverwinter".repo = "flake-nimble";
  inputs."neverwinter".ref = "flake-pinning";
  inputs."neverwinter".dir = "nimpkgs/n/neverwinter";

  
  inputs."docopt".type = "github";
  inputs."docopt".owner = "riinr";
  inputs."docopt".repo = "flake-nimble";
  inputs."docopt".ref = "flake-pinning";
  inputs."docopt".dir = "nimpkgs/d/docopt";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nwnt-v1_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nwnt-v1_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nwnt-v1_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}