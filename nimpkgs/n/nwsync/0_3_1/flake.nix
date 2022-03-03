{
  description = ''NWSync Repository Management utilities'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nwsync-0_3_1.flake = false;
  inputs.src-nwsync-0_3_1.type = "github";
  inputs.src-nwsync-0_3_1.owner = "Beamdog";
  inputs.src-nwsync-0_3_1.repo = "nwsync";
  inputs.src-nwsync-0_3_1.ref = "refs/tags/0.3.1";
  inputs.src-nwsync-0_3_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."neverwinter".type = "github";
  # inputs."neverwinter".owner = "riinr";
  # inputs."neverwinter".repo = "flake-nimble";
  # inputs."neverwinter".ref = "flake-pinning";
  # inputs."neverwinter".dir = "nimpkgs/n/neverwinter";
  # inputs."neverwinter".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."neverwinter".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nwsync-0_3_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nwsync-0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nwsync-0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}