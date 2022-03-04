{
  description = ''A Protocol Buffers library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimpb-master.flake = false;
  inputs.src-nimpb-master.type = "github";
  inputs.src-nimpb-master.owner = "oswjk";
  inputs.src-nimpb-master.repo = "nimpb";
  inputs.src-nimpb-master.ref = "refs/heads/master";
  inputs.src-nimpb-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."nimpb_protoc".type = "github";
  inputs."nimpb_protoc".owner = "riinr";
  inputs."nimpb_protoc".repo = "flake-nimble";
  inputs."nimpb_protoc".ref = "flake-pinning";
  inputs."nimpb_protoc".dir = "nimpkgs/n/nimpb_protoc";
  inputs."nimpb_protoc".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpb_protoc".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimpb-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimpb-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimpb-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}