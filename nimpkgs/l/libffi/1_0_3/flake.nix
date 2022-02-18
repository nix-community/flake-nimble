{
  description = ''libffi wrapper for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-libffi-1_0_3.flake = false;
  inputs.src-libffi-1_0_3.type = "github";
  inputs.src-libffi-1_0_3.owner = "Araq";
  inputs.src-libffi-1_0_3.repo = "libffi";
  inputs.src-libffi-1_0_3.ref = "refs/tags/1.0.3";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-libffi-1_0_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libffi-1_0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-libffi-1_0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}