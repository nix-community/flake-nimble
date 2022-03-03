{
  description = ''This library is a wrapper to C GDBM library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-gdbmc-v0_9_0.flake = false;
  inputs.src-gdbmc-v0_9_0.type = "github";
  inputs.src-gdbmc-v0_9_0.owner = "vycb";
  inputs.src-gdbmc-v0_9_0.repo = "gdbmc.nim";
  inputs.src-gdbmc-v0_9_0.ref = "refs/tags/v0.9.0";
  inputs.src-gdbmc-v0_9_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-gdbmc-v0_9_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gdbmc-v0_9_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-gdbmc-v0_9_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}