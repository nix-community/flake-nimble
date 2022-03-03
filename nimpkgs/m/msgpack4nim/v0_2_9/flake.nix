{
  description = ''Another MessagePack implementation written in pure nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-msgpack4nim-v0_2_9.flake = false;
  inputs.src-msgpack4nim-v0_2_9.type = "github";
  inputs.src-msgpack4nim-v0_2_9.owner = "jangko";
  inputs.src-msgpack4nim-v0_2_9.repo = "msgpack4nim";
  inputs.src-msgpack4nim-v0_2_9.ref = "refs/tags/v0.2.9";
  inputs.src-msgpack4nim-v0_2_9.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-msgpack4nim-v0_2_9, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-msgpack4nim-v0_2_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-msgpack4nim-v0_2_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}