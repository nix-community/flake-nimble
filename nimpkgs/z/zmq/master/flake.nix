{
  description = ''ZeroMQ 4 wrapper'';
  inputs.src-zmq-master.flake = false;
  inputs.src-zmq-master.type = "github";
  inputs.src-zmq-master.owner = "nim-lang";
  inputs.src-zmq-master.repo = "nim-zmq";
  inputs.src-zmq-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-zmq-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zmq-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zmq-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}