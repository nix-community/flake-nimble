{
  description = ''Nim wrapper for wyhash'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-wyhash-main.flake = false;
  inputs.src-wyhash-main.type = "github";
  inputs.src-wyhash-main.owner = "jackhftang";
  inputs.src-wyhash-main.repo = "wyhash.nim";
  inputs.src-wyhash-main.ref = "refs/heads/main";
  inputs.src-wyhash-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-wyhash-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-wyhash-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-wyhash-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}