{
  description = ''Ping hosts using tcp packets'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-tcping-v1_0_0.flake = false;
  inputs.src-tcping-v1_0_0.type = "github";
  inputs.src-tcping-v1_0_0.owner = "pdrb";
  inputs.src-tcping-v1_0_0.repo = "tcping";
  inputs.src-tcping-v1_0_0.ref = "refs/tags/v1.0.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-tcping-v1_0_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tcping-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-tcping-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}