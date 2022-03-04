{
  description = ''Concise Binary Object Representation decoder (RFC7049).'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-cbor-master.flake = false;
  inputs.src-cbor-master.type = "other";
  inputs.src-cbor-master.owner = "~ehmry";
  inputs.src-cbor-master.repo = "nim_cbor";
  inputs.src-cbor-master.ref = "refs/heads/master";
  inputs.src-cbor-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."bigints".type = "github";
  inputs."bigints".owner = "riinr";
  inputs."bigints".repo = "flake-nimble";
  inputs."bigints".ref = "flake-pinning";
  inputs."bigints".dir = "nimpkgs/b/bigints";
  inputs."bigints".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bigints".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-cbor-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cbor-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cbor-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}