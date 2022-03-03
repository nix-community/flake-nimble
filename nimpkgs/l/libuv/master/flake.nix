{
  description = ''libuv bindings for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-libuv-master.flake = false;
  inputs.src-libuv-master.type = "github";
  inputs.src-libuv-master.owner = "lcrees";
  inputs.src-libuv-master.repo = "libuv";
  inputs.src-libuv-master.ref = "refs/heads/master";
  inputs.src-libuv-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-libuv-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libuv-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-libuv-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}