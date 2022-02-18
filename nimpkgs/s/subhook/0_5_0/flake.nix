{
  description = ''subhook wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-subhook-0_5_0.flake = false;
  inputs.src-subhook-0_5_0.type = "github";
  inputs.src-subhook-0_5_0.owner = "ba0f3";
  inputs.src-subhook-0_5_0.repo = "subhook.nim";
  inputs.src-subhook-0_5_0.ref = "refs/tags/0.5.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-subhook-0_5_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-subhook-0_5_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-subhook-0_5_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}