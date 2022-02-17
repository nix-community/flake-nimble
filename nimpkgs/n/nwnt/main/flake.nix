{
  description = ''GFF <-> NWNT Converter (NeverWinter Nights Text)'';
  inputs.src-nwnt-main.flake = false;
  inputs.src-nwnt-main.type = "github";
  inputs.src-nwnt-main.owner = "WilliamDraco";
  inputs.src-nwnt-main.repo = "NWNT";
  inputs.src-nwnt-main.ref = "refs/heads/main";
  
  
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

  outputs = { self, nixpkgs, src-nwnt-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nwnt-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nwnt-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}