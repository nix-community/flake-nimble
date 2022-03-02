{
  description = ''Nim bindings for libOVR (Oculus Rift)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-libovr-master.flake = false;
  inputs.src-libovr-master.type = "github";
  inputs.src-libovr-master.owner = "bluenote10";
  inputs.src-libovr-master.repo = "nim-ovr";
  inputs.src-libovr-master.ref = "refs/heads/master";
  inputs.src-libovr-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-libovr-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libovr-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-libovr-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}