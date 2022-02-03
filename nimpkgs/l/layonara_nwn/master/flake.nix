{
  description = ''Various Layonara related functions for NWN Development'';
  inputs.src-layonara_nwn-master.flake = false;
  inputs.src-layonara_nwn-master.type = "github";
  inputs.src-layonara_nwn-master.owner = "plenarius";
  inputs.src-layonara_nwn-master.repo = "layonara_nwn";
  inputs.src-layonara_nwn-master.ref = "refs/heads/master";
  
  
  inputs."neverwinter".url = "path:../../../n/neverwinter";
  inputs."neverwinter".type = "github";
  inputs."neverwinter".owner = "riinr";
  inputs."neverwinter".repo = "flake-nimble";
  inputs."neverwinter".ref = "flake-pinning";
  inputs."neverwinter".dir = "nimpkgs/n/neverwinter";

  
  inputs."glob".url = "path:../../../g/glob";
  inputs."glob".type = "github";
  inputs."glob".owner = "riinr";
  inputs."glob".repo = "flake-nimble";
  inputs."glob".ref = "flake-pinning";
  inputs."glob".dir = "nimpkgs/g/glob";

  
  inputs."docopt".url = "path:../../../d/docopt";
  inputs."docopt".type = "github";
  inputs."docopt".owner = "riinr";
  inputs."docopt".repo = "flake-nimble";
  inputs."docopt".ref = "flake-pinning";
  inputs."docopt".dir = "nimpkgs/d/docopt";

  outputs = { self, nixpkgs, src-layonara_nwn-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-layonara_nwn-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-layonara_nwn-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}