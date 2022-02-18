{
  description = ''ZeroMQ 4 wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-zmq-v1_2_1.flake = false;
  inputs.src-zmq-v1_2_1.type = "github";
  inputs.src-zmq-v1_2_1.owner = "nim-lang";
  inputs.src-zmq-v1_2_1.repo = "nim-zmq";
  inputs.src-zmq-v1_2_1.ref = "refs/tags/v1.2.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-zmq-v1_2_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zmq-v1_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-zmq-v1_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}