{
  description = ''GFF <-> NWNT Converter (NeverWinter Nights Text)'';
  inputs.src-nwnt-v1_3_1.flake = false;
  inputs.src-nwnt-v1_3_1.type = "github";
  inputs.src-nwnt-v1_3_1.owner = "WilliamDraco";
  inputs.src-nwnt-v1_3_1.repo = "NWNT";
  inputs.src-nwnt-v1_3_1.ref = "refs/tags/v1.3.1";
  
  
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

  outputs = { self, nixpkgs, src-nwnt-v1_3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nwnt-v1_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nwnt-v1_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}