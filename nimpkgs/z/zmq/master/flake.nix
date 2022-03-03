{
  description = ''ZeroMQ 4 wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-zmq-master.flake = false;
  inputs.src-zmq-master.type = "github";
  inputs.src-zmq-master.owner = "nim-lang";
  inputs.src-zmq-master.repo = "nim-zmq";
  inputs.src-zmq-master.ref = "refs/heads/master";
  inputs.src-zmq-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-zmq-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zmq-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-zmq-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}