{
  description = ''A MessagePack binding for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-msgpack-master.flake = false;
  inputs.src-msgpack-master.type = "github";
  inputs.src-msgpack-master.owner = "akiradeveloper";
  inputs.src-msgpack-master.repo = "msgpack-nim";
  inputs.src-msgpack-master.ref = "refs/heads/master";
  inputs.src-msgpack-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-msgpack-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-msgpack-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-msgpack-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}