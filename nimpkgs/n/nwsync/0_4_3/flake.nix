{
  description = ''NWSync Repository Management utilities'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nwsync-0_4_3.flake = false;
  inputs.src-nwsync-0_4_3.type = "github";
  inputs.src-nwsync-0_4_3.owner = "Beamdog";
  inputs.src-nwsync-0_4_3.repo = "nwsync";
  inputs.src-nwsync-0_4_3.ref = "refs/tags/0.4.3";
  inputs.src-nwsync-0_4_3.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."neverwinter".type = "github";
  # inputs."neverwinter".owner = "riinr";
  # inputs."neverwinter".repo = "flake-nimble";
  # inputs."neverwinter".ref = "flake-pinning";
  # inputs."neverwinter".dir = "nimpkgs/n/neverwinter";
  # inputs."neverwinter".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."neverwinter".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."docopt".type = "github";
  # inputs."docopt".owner = "riinr";
  # inputs."docopt".repo = "flake-nimble";
  # inputs."docopt".ref = "flake-pinning";
  # inputs."docopt".dir = "nimpkgs/d/docopt";
  # inputs."docopt".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."docopt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nwsync-0_4_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nwsync-0_4_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nwsync-0_4_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}