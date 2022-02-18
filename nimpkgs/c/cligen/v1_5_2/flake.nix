{
  description = ''Infer & generate command-line interace/option/argument parsers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-cligen-v1_5_2.flake = false;
  inputs.src-cligen-v1_5_2.type = "github";
  inputs.src-cligen-v1_5_2.owner = "c-blake";
  inputs.src-cligen-v1_5_2.repo = "cligen";
  inputs.src-cligen-v1_5_2.ref = "refs/tags/v1.5.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-cligen-v1_5_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cligen-v1_5_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cligen-v1_5_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}