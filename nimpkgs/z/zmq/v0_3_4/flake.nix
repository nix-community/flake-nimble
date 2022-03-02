{
  description = ''ZeroMQ 4 wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-zmq-v0_3_4.flake = false;
  inputs.src-zmq-v0_3_4.type = "github";
  inputs.src-zmq-v0_3_4.owner = "nim-lang";
  inputs.src-zmq-v0_3_4.repo = "nim-zmq";
  inputs.src-zmq-v0_3_4.ref = "refs/tags/v0.3.4";
  inputs.src-zmq-v0_3_4.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-zmq-v0_3_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zmq-v0_3_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-zmq-v0_3_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}