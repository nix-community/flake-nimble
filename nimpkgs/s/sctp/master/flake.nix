{
  description = ''Userspace SCTP bindings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-sctp-master.flake = false;
  inputs.src-sctp-master.type = "github";
  inputs.src-sctp-master.owner = "metacontainer";
  inputs.src-sctp-master.repo = "sctp.nim";
  inputs.src-sctp-master.ref = "refs/heads/master";
  inputs.src-sctp-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."reactor".type = "github";
  inputs."reactor".owner = "riinr";
  inputs."reactor".repo = "flake-nimble";
  inputs."reactor".ref = "flake-pinning";
  inputs."reactor".dir = "nimpkgs/r/reactor";
  inputs."reactor".inputs.nixpkgs.follows = "nixpkgs";
  inputs."reactor".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-sctp-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sctp-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sctp-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}