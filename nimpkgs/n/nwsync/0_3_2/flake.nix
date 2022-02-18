{
  description = ''NWSync Repository Management utilities'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nwsync-0_3_2.flake = false;
  inputs.src-nwsync-0_3_2.type = "github";
  inputs.src-nwsync-0_3_2.owner = "Beamdog";
  inputs.src-nwsync-0_3_2.repo = "nwsync";
  inputs.src-nwsync-0_3_2.ref = "refs/tags/0.3.2";
  
  
  inputs."neverwinter".type = "github";
  inputs."neverwinter".owner = "riinr";
  inputs."neverwinter".repo = "flake-nimble";
  inputs."neverwinter".ref = "flake-pinning";
  inputs."neverwinter".dir = "nimpkgs/n/neverwinter";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nwsync-0_3_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nwsync-0_3_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nwsync-0_3_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}