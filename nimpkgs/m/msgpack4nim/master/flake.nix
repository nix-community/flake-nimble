{
  description = ''Another MessagePack implementation written in pure nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-msgpack4nim-master.flake = false;
  inputs.src-msgpack4nim-master.type = "github";
  inputs.src-msgpack4nim-master.owner = "jangko";
  inputs.src-msgpack4nim-master.repo = "msgpack4nim";
  inputs.src-msgpack4nim-master.ref = "refs/heads/master";
  inputs.src-msgpack4nim-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-msgpack4nim-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-msgpack4nim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-msgpack4nim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}