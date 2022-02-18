{
  description = ''Concise Binary Object Representation decoder (RFC7049).'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-cbor-master.flake = false;
  inputs.src-cbor-master.type = "other";
  inputs.src-cbor-master.owner = "~ehmry";
  inputs.src-cbor-master.repo = "nim_cbor";
  inputs.src-cbor-master.ref = "refs/heads/master";
  
  
  inputs."bigints".type = "github";
  inputs."bigints".owner = "riinr";
  inputs."bigints".repo = "flake-nimble";
  inputs."bigints".ref = "flake-pinning";
  inputs."bigints".dir = "nimpkgs/b/bigints";

  outputs = { self, nixpkgs, flakeNimbleLib, src-cbor-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cbor-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cbor-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}