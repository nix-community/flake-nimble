{
  description = ''Qt Qml bindings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimqml-0_9_1.flake = false;
  inputs.src-nimqml-0_9_1.type = "github";
  inputs.src-nimqml-0_9_1.owner = "filcuc";
  inputs.src-nimqml-0_9_1.repo = "nimqml";
  inputs.src-nimqml-0_9_1.ref = "refs/tags/0.9.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimqml-0_9_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimqml-0_9_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimqml-0_9_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}