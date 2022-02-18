{
  description = ''Argument parser'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nap-1_5_1.flake = false;
  inputs.src-nap-1_5_1.type = "github";
  inputs.src-nap-1_5_1.owner = "madprops";
  inputs.src-nap-1_5_1.repo = "nap";
  inputs.src-nap-1_5_1.ref = "refs/tags/1.5.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nap-1_5_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nap-1_5_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nap-1_5_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}