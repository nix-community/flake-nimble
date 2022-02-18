{
  description = ''Infer & generate command-line interace/option/argument parsers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-cligen-v1_5_5.flake = false;
  inputs.src-cligen-v1_5_5.type = "github";
  inputs.src-cligen-v1_5_5.owner = "c-blake";
  inputs.src-cligen-v1_5_5.repo = "cligen";
  inputs.src-cligen-v1_5_5.ref = "refs/tags/v1.5.5";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-cligen-v1_5_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cligen-v1_5_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cligen-v1_5_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}