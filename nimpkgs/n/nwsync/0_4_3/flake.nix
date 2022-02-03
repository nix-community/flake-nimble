{
  description = ''NWSync Repository Management utilities'';
  inputs.src-nwsync-0_4_3.flake = false;
  inputs.src-nwsync-0_4_3.type = "github";
  inputs.src-nwsync-0_4_3.owner = "Beamdog";
  inputs.src-nwsync-0_4_3.repo = "nwsync";
  inputs.src-nwsync-0_4_3.ref = "refs/tags/0.4.3";
  
  
  inputs."neverwinter".url = "path:../../../n/neverwinter";
  inputs."neverwinter".type = "github";
  inputs."neverwinter".owner = "riinr";
  inputs."neverwinter".repo = "flake-nimble";
  inputs."neverwinter".ref = "flake-pinning";
  inputs."neverwinter".dir = "nimpkgs/n/neverwinter";

  
  inputs."docopt".url = "path:../../../d/docopt";
  inputs."docopt".type = "github";
  inputs."docopt".owner = "riinr";
  inputs."docopt".repo = "flake-nimble";
  inputs."docopt".ref = "flake-pinning";
  inputs."docopt".dir = "nimpkgs/d/docopt";

  outputs = { self, nixpkgs, src-nwsync-0_4_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nwsync-0_4_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nwsync-0_4_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}