{
  description = ''Infer & generate command-line interace/option/argument parsers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-cligen-v0_9_17.flake = false;
  inputs.src-cligen-v0_9_17.type = "github";
  inputs.src-cligen-v0_9_17.owner = "c-blake";
  inputs.src-cligen-v0_9_17.repo = "cligen";
  inputs.src-cligen-v0_9_17.ref = "refs/tags/v0.9.17";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-cligen-v0_9_17, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cligen-v0_9_17;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cligen-v0_9_17"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}