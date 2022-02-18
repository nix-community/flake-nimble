{
  description = ''Support for ensemble file format and arithmetic using jackknife/bootstrap propagation of errors'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-ensem-v1_1_0.flake = false;
  inputs.src-ensem-v1_1_0.type = "github";
  inputs.src-ensem-v1_1_0.owner = "JeffersonLab";
  inputs.src-ensem-v1_1_0.repo = "ensem";
  inputs.src-ensem-v1_1_0.ref = "refs/tags/v1.1.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ensem-v1_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ensem-v1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ensem-v1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}