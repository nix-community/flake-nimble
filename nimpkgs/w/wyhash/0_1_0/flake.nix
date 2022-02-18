{
  description = ''Nim wrapper for wyhash'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-wyhash-0_1_0.flake = false;
  inputs.src-wyhash-0_1_0.type = "github";
  inputs.src-wyhash-0_1_0.owner = "jackhftang";
  inputs.src-wyhash-0_1_0.repo = "wyhash.nim";
  inputs.src-wyhash-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-wyhash-0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-wyhash-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-wyhash-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}