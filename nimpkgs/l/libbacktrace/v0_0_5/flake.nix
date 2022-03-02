{
  description = ''Nim wrapper for libbacktrace'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-libbacktrace-v0_0_5.flake = false;
  inputs.src-libbacktrace-v0_0_5.type = "github";
  inputs.src-libbacktrace-v0_0_5.owner = "status-im";
  inputs.src-libbacktrace-v0_0_5.repo = "nim-libbacktrace";
  inputs.src-libbacktrace-v0_0_5.ref = "refs/tags/v0.0.5";
  inputs.src-libbacktrace-v0_0_5.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-libbacktrace-v0_0_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libbacktrace-v0_0_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-libbacktrace-v0_0_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}