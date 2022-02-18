{
  description = ''Argument parser'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nap-v1_2_1.flake = false;
  inputs.src-nap-v1_2_1.type = "github";
  inputs.src-nap-v1_2_1.owner = "madprops";
  inputs.src-nap-v1_2_1.repo = "nap";
  inputs.src-nap-v1_2_1.ref = "refs/tags/v1.2.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nap-v1_2_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nap-v1_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nap-v1_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}