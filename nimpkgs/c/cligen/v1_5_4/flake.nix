{
  description = ''Infer & generate command-line interace/option/argument parsers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-cligen-v1_5_4.flake = false;
  inputs.src-cligen-v1_5_4.type = "github";
  inputs.src-cligen-v1_5_4.owner = "c-blake";
  inputs.src-cligen-v1_5_4.repo = "cligen";
  inputs.src-cligen-v1_5_4.ref = "refs/tags/v1.5.4";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-cligen-v1_5_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cligen-v1_5_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cligen-v1_5_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}